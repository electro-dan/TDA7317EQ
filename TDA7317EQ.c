/*****************************************************************************************************************
 Copyright Daniel Clarke https://electro-dan.co.uk, 21st November 2022
 Free to use and adapt but NO guarantees or support
 For PIC16F1824
 
*****************************************************************************************************************/

#include "TDA7317EQ.h"

// Configuration registers - PIC16F1824
// CLKOUT function off, Brown out reset off, Data code/code protection off, MCLRE is digital in, Power-up Timer on, Watchdog timer off, Internal Osciallator active
#pragma DATA _CONFIG1, _CLKOUTEN_OFF & _BOREN_OFF & _CPD_OFF & _CP_OFF & _MCLRE_OFF & _PWRTE_ON & _WDTE_OFF & _FOSC_INTOSC 
// Low voltage programming off, Brown-out Reset Voltage (VBOR) set to 2.5 V, 4xPLL disabled, Flash write protect off
#pragma DATA _CONFIG2, _LVP_OFF & _BORV_25 & _PLLEN_OFF & _WRT_OFF

// Set clock frequency - 16MHz Internal Oscillator
#pragma CLOCK_FREQ  16000000

/***********************************************************************************
  Function called once only to initialise variables and setup the PIC registers
************************************************************************************/
void initialise() {
    // osc speed 16MHz
    osccon = 0x7A; // 4xPLL off, 16Mhz HF, Internal oscillator block
    // IO ports setup
    trisa = 0x3C; // RA2, RA3, RA4, RA5 are inputs
    porta = 0x00; // set to off
    trisc = 0x03; // RC1[SDA] and RC0[SCL] are inputs
    portc = 0x03; // set to off, except RC0, RC1 for I2C
    ansela = 0;
    wpua = 0;
    anselc = 0;
    wpuc = 0;

    option_reg.NOT_WPUEN = 1; // Port A pull-ups disabled
    
    // Initialise I2C MSSP
    // Master 100KHz
    // TRISC set SCL and SDA pins as inputs above
    // sspcon same as ssp1con1
    // SSPEN (I2C), CKP (clock polarity), SSPM3:SSPM0 -> 1000 = I2C Master mode, 
    sspcon = 0x28; // I2C enabled (SSPEN), I2C Master mode clock = FOSC/(4 * (SSP1ADD+1))
    sspcon2 = 0x00;
    sspadd = 39; // Clock 100Khz @ 16Mhz Fosc - 16000000 / (4 * (39 + 1))
    sspstat.SMP = 1; // Slew rate disabled
    sspstat.CKE = 0;
    pir2.BCL1IF = 0;
    
    delay_s(1);

    // Read in variables from EEPROM
    readData();

    // Interrupt setup
    //intcon.IOCIE = 0; // Interrupt on-change
    
    // Setup timer 1, used to periodically save data
    // Timer calculator: http://eng-serve.com/pic/pic_timer.html
    // Timer 1 setup - interrupt every 131ms seconds 16MHz
    t1con = 0;
    t1con.T1CKPS1 = 1;   // bits 5-4  Prescaler Rate Select bits
    t1con.T1CKPS0 = 1;   // bit 4
    //t1con.T1OSCEN = 0;   // bit 3 Timer1 Oscillator Enable Control bit 1 = off - this should be cleared so we can use RA4 and RA5 as outputs
    t1con.NOT_T1SYNC = 1;    // bit 2 Timer1 External Clock Input Synchronization Control bit...1 = Do not synchronize external clock input
    //t1con.TMR1CS = 0;    // bit 1 Timer1 Clock Source Select bit...0 = Internal clock (FOSC/4)
    t1con.TMR1ON = 1;    // bit 0 enables timer
    pie1.TMR1IE = 1; // Timer 1 interrupt enable
    pir1.TMR1IF = 0; // Clear timer 1 interrupt flag bit

    intcon.PEIE = 1; // Enables all unmasked peripheral interrupts (required for timer1 and I2C)
    intcon.GIE = 1; // Enable global interrupts

    tda7317Write();

    ssd1306Init();
    ssd1306WriteAll();

    LED = 1; // Standby LED
}

/***********************************************************************************
  Interrupt handler
************************************************************************************/
void interrupt(void) {
    // Handle timer1 interrupt
    if (pir1.TMR1IF && pie1.TMR1IE) {
        if (iTimer1Count >= 231) {
            iTimer1Count = 0;
            // If the number of tasks to perform is less than the limit,
            // then add this task to the task array
            cTask.TASK_TIMER1 = 1;
        }
        // Count the number of times this timer overflowed
        iTimer1Count++;
        // Clear interrupt flag
        pir1.TMR1IF = 0; 
    }
}

/***********************************************************************************
  EEPROM read and write methods
************************************************************************************/
void saveData() {
    char didWrite = 0;
    // only write value if it is different
    for (char i = 0; i < 10; i++)
        didWrite += eepromWrite(i, iBands[i]);
    
    didWrite += eepromWrite(10, iVolume);
    
    if (didWrite)
        eepromWrite(11, 10); // To indicate EEPROM has been saved
}

char eepromWrite(char address, char data) {
    char didWrite = 0;
    if (eepromRead(address) != data) {
        char intconsave = intcon;
        
        // Load address and data
        eeadr = address;
        eedata = data;
    
        eecon1.EEPGD = 0; // Point to DATA memory
        //eecon1.CFGS = 0; // Access EEPROM
        eecon1.WREN = 1; // Enable writes
        
        // Required write sequence
        intcon = 0;
        eecon2 = 0x55; // Write 55h
        eecon2 = 0xAA; // Write 0AAh
        eecon1.WR = 1; // Set WR bit to begin write
        intcon = intconsave;
        eecon1.WREN = 0; // Disable writes on write complete (EEIF set)
        while(!pir2.EEIF); // Wait for the interrupt bit EEIF to be set
        pir2.EEIF = 0; // Clear EEIF
        didWrite = 1;
    }
    return didWrite;
}

/******************************************************
  Function to read the current variables from ROM
*******************************************************/
void readData() {
    // Read initial values from EEPROM
    // Do not read other variables if the EEPROM has not been saved before
    // as all default will be 0xFF
    if (eepromRead(11) == 10) {
        for (char i = 0; i < 10; i++)
            iBands[i] = eepromRead(i);
        iVolume = eepromRead(10);
    }
}

char eepromRead(char address) {
    // Load address
    eeadr = address;
    eecon1.EEPGD = 0; // Point to DATA memory
    //eecon1.CFGS = 0; // Access EEPROM
    
    // Read, data is available in eedata the next cycle.
    eecon1.RD = 1;
    
    // Return value
    return eedata;
}

/***********************************************************************************
  I2C methods using MSSP
  https://www.hobbytronics.co.uk/tutorials-code/tutorials-microchip/hi-tech-c-i2c-master
************************************************************************************/
// i2c_Wait - wait for I2C transfer to finish
void i2cWait(void) {
    // sspcon2 bit 4 ACKEN: Initiate Acknowledge sequence on SDA and SCL pins and transmit ACKDT data bit. Automatically cleared by hardware.
    // sspcon2 bit 3 RCEN: Enables Receive mode for I2C
    // sspcon2 bit 2 PEN: Initiate STOP condition on SDA and SCL pins. Automatically cleared by hardware
    // sspcon2 bit 1 RSEN: Initiate Repeated START condition on SDA and SCL pins. Automatically cleared by hardware.
    // sspcon2 bit 0 SEN: Initiate START condition on SDA and SCL pins. Automatically cleared by hardware.
    // sspstat bit 3: Indicates that a START bit has been detected last
    while ((sspcon2 & 0x1F) || (sspstat & 0x04));
}

// i2c_Start - Start I2C communication
void i2cStart(void) {
    i2cWait();
    sspcon2.SEN = 1;
}

// i2c_Stop - Stop I2C communication
void i2cStop(void) {
    i2cWait();
    sspcon2.PEN = 1;
}

// i2cWrite - Sends one byte of data
void i2cWrite(char data) {
    i2cWait();
    sspbuf = data;
}

/***********************************************************************************
  SSD1306 methods
************************************************************************************/
void ssd1306StartCommand() {
    i2cStart();
    i2cWrite(ssd1306_addr);
    i2cWrite(0x00); // Co = 0, D/C = 0
}

void ssd1306Init() {
    
    ssd1306StartCommand();
    i2cWrite(0xAE); // Set Display Off
    i2cWrite(0xD5); // Set Display Clock Divide Ratio/ Oscillator Frequency
    i2cWrite(0x80); // ratio 0x80 - this is default
    i2cWrite(0xA8); // Set Multiplex Ratio
    i2cStop();
    
    ssd1306StartCommand();
    i2cWrite(0x1F); // 1F = 31 = 32 lines height
    i2cStop();

    ssd1306StartCommand();
    i2cWrite(0xD3); // Set Display Offset
    i2cWrite(0x00); // no offset
    i2cWrite(0x40); // Set Display Start Line - Line 0
    i2cWrite(0x8D); // Charge Pump Setting
    i2cStop();
    
    // 14 -  Enable Charge Pump
    ssd1306StartCommand();
    i2cWrite(0x14);
    i2cStop();
    
    ssd1306StartCommand();
    i2cWrite(0x20); // memory mode
    i2cWrite(0x00); // 0x0 act like ks0108 - horizontal addressing mode
    i2cWrite(0xA1); // Set Segment Re-map - A0 = Column address 0 is mapped to SEG0, A1 = Column address 127 is mapped to SEG0
    i2cWrite(0xC8); // Set COM Output Scan Direction - C0 = normal mode (RESET) Scan from COM0 to COM[N �1], C8 = Remapped mode. Scan from COM[N-1] to COM0
    i2cStop();
    
    ssd1306StartCommand();
    i2cWrite(0xDA); // Set COM Pins Hardware Configuration
    i2cStop();

    ssd1306StartCommand();
    i2cWrite(0x02); // 02 = Sequential COM pin configuration, Disable COM Left/Right remap
    i2cStop();
    
    ssd1306StartCommand();
    i2cWrite(0x81); // Set Contrast Control
    i2cStop();
    ssd1306StartCommand();
    i2cWrite(0x8F); // constrast 0 to FF
    i2cStop();
    
    ssd1306StartCommand();
    i2cWrite(0xD9); // Set Pre-charge Period duration
    i2cStop();
    ssd1306StartCommand();
    i2cWrite(0xF1); // phase 2 = 15 DCLK, phase 1 = 1 DCLK
    i2cStop();
    
    ssd1306StartCommand();
    i2cWrite(0xDB); // Set VCOMH Deselect Level (adjusts VCOMH regulator output)
    i2cWrite(0x40); // ~ 0.77 x VCC
    i2cWrite(0xA4); // Disable Entire Display On
    i2cWrite(0xA6); // Set Normal Display
    i2cWrite(0x2E); // Deactivate Scroll
    i2cWrite(0xAF); // Set Display On
    i2cStop();
}

void ssd1306WriteAll() {
    char x;
    char i;
    // Work out volume byte for bar
    char iVolumeAlt = 47 - iVolume;
    char bVolByte[] = {0xFF, 0xFF, 0xFF}; // start with all blocks filled
    // Range for the second page is 32 to 47 (max covers 46 and 47)
    if (iVolumeAlt < 46) {
        i = 46; // 32+14
        while ((iVolumeAlt < i) && bVolByte[0]) {
            bVolByte[0] = bVolByte[0] << 1; // shift left
            i -= 2;
        }
    }
    // Next page range for the third page is 16 to 31 (max covers 46 and 47)
    if (iVolumeAlt < 30) {
        i = 30; // 16+14
        while ((iVolumeAlt < i) && bVolByte[1]) {
            bVolByte[1] = bVolByte[1] << 1; // shift left
            i -= 2;
        }
    }
    // Range for the fourth page is 0 to 15
    if (iVolumeAlt < 14) {
        i = 14;
        while ((iVolumeAlt < i) && bVolByte[2]) {
            bVolByte[2] = bVolByte[2] << 1; // shift left
            i -= 2;
        }
    }
    // Work out band bytes
    char bBandBytes[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}; // start with all blocks empty
    // Dealing with boost here where iBands[x] is 0 to 7
    // Loop through 10 bands
    for (x = 0; x < 10; x++) {
        char iBand = iBands[x];
        if (iBand < 8) {
            char bBandByte = 0xFE;
            i = 7;
            while ((iBand < i) && bBandByte) {
                bBandByte = bBandByte << 1; // shift left
                i--;
            }
            bBandBytes[x] = bBandByte;
        }
    }
    // Third page for -2dB to -14dB (7 steps) - Dealing with cut here where iBands[x] is 9 to 15
    // Loop through 10 bands
    for (x = 0; x < 10; x++) {
        char iBand = iBands[x];
        if (iBand > 8) {
            char bBandByte = 0x7F;
            i = 15;
            while ((iBand < i) && bBandByte) {
                bBandByte = bBandByte >> 1; // shift right
                i--;
            }
            bBandBytes[x + 10] = bBandByte;
        }
    }
    
    // Value display
    char cDisplay[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    char showMinus = 0;
    char showPlus = 0;
    char iEndChars = 3;
    if (iActiveBand == 0) {
        if (iVolume != 0) {
            cDisplay[0] = 11; // minus char
            // handle volume (attenuation) - multiply by 375
            // 47 = -17.625
            unsigned short iVolCalc = iVolume * 375;
            // determine the 10 thousands digit
            if (iVolCalc >= 10000) {
                while (iVolCalc >= 10000) {
                    iVolCalc = iVolCalc - 10000;
                    // each time we take off 10000, the digit is incremented
                    cDisplay[1]++;
                }
            } else {
                cDisplay[1] = 15; // no char
            }
            // determine the thousands digit
            while (iVolCalc >= 1000) {
                iVolCalc = iVolCalc - 1000;
                // each time we take off 1000, the digit is incremented
                cDisplay[2]++;
            }
            if (iVolCalc > 0) {
                // decimal point
                cDisplay[3] = 10; // 10th element in dispNumbers is for the decimal
                // determine the hundreds digit
                while (iVolCalc >= 100) {
                    iVolCalc = iVolCalc - 100;
                    // each time we take off 100, the digit is incremented
                    cDisplay[4]++;
                    iEndChars = 5;
                }
                // determine the tens digit
                while (iVolCalc >= 10) {
                    iVolCalc = iVolCalc - 10;
                    // each time we take off 10, the digit is incremented
                    cDisplay[5]++;
                    iEndChars = 6;
                }
                if (iVolCalc > 0) {
                    // the last digit is what's left on iVolCalc
                    cDisplay[6] = iVolCalc & 0xFF;
                    iEndChars = 7;
                }
            }
        } else {
            cDisplay[0] = 15; // no char
            cDisplay[1] = 15; // no char
            iEndChars = 3;
        }
    } else {
        // handle EQ band
        char iBand = iBands[iActiveBand - 1];
        if (iBand > 0) {
            if (iBand <= 7) {
                // Band is in boost
                cDisplay[0] = 12; // plus char
            } else if (iBand > 8) {
                // if band is in cut
                cDisplay[0] = 11; // minus char
                iBand -= 8;
            }
            char iBandCalc = iBand * 2;
            if (iBandCalc >= 10) {
                cDisplay[1] = 1;
                iBandCalc -= 10;
                cDisplay[2] = iBandCalc;
            } else {
                cDisplay[1] = iBandCalc;
                iEndChars = 2;
            }            
        } else {
            cDisplay[0] = 15; // no char
            iEndChars = 2;
        }
    }
    // End with blank, dB then fill rest with blanks
    cDisplay[iEndChars] = 15;
    iEndChars++;
    cDisplay[iEndChars] = 13;
    iEndChars++;
    cDisplay[iEndChars] = 14;
    iEndChars++;
    while (iEndChars <= 9) {
        cDisplay[iEndChars] = 15;
        iEndChars++;
    }

    ssd1306StartCommand();
    i2cWrite(0x22); // set page address 0 3
    i2cWrite(0); 
    i2cWrite(4); 
    i2cWrite(0x21); // set column address 0
    i2cWrite(0); 
    i2cWrite(127);  // set column end address 127
    i2cStop();
    
    // volume bars are at -0.75dB steps -> 23 steps from 0dB to -17.25dB
    // eq bars are -2dB steps -> 7 steps cut, 7 steps boost from -14dB to -2dB then 2dB to 14dB

    i2cStart();
    i2cWrite(ssd1306_addr);
    i2cWrite(0x40);
    
    char bByte;
    char iCheckBand = 1;
    char iBandArea = 0;
    // First page has header and selected band
    for (x = 0; x < 128; x++) {
        bByte = dispHeader[x];
        if (x < 8) {
            if (iActiveBand == 0)
                bByte.6 = 1; // Set bit
        } 
        if (x >= 10) {
            if ((iBandArea < 10) && (iCheckBand == iActiveBand))
                bByte.6 = 1; // Set bit
            iBandArea++;
            if (iBandArea == 12) {
                iBandArea = 0;
                iCheckBand++;
            }
        }
        i2cWrite(bByte);
    }
    // Second page for +2dB to +14dB (7 steps) + centre line
    // also volume from 0dB to 
    iBandArea = 0;
    iCheckBand = 0;
    // Set final pixels and write to display
    for (x = 0; x < 128; x++) {
        bByte = 0;
        if ((x >= 1) && (x <= 6)) {
            bByte = bVolByte[0];
        } else if (x >= 10) {
            if ((iBandArea > 0) && (iBandArea < 9)) {
                bByte = bBandBytes[iCheckBand] >> 1;
            }
            if (iBandArea < 10)
                bByte.7 = 1; // Set bit
            iBandArea++;
            if (iBandArea == 12) {
                iBandArea = 0;
                iCheckBand++;
            }
        }
        i2cWrite(bByte);
    }

    // Set final pixels and write to display
    iBandArea = 0;
    iCheckBand = 0;
    for (x = 0; x < 128; x++) {
        bByte = 0;
        if ((x >= 1) && (x <= 6)) {
            bByte = bVolByte[1];
        } else if (x >= 10) {
            if ((iBandArea > 0) && (iBandArea < 9)) {
                bByte = bBandBytes[iCheckBand + 10];
            }
            iBandArea++;
            if (iBandArea == 12) {
                iBandArea = 0;
                iCheckBand++;
            }
        }
        i2cWrite(bByte);
    }

    // Fourth page band text
    // Calculate the value to display
    char iCharCol = 0; // From 0 to 5, repeats for each character
    char iDoDisplayChar = 0; // changes to 1 when non-zero number is found
    char iCharsDisplayed = 0;
    char cCurrent = 0;
    char iDoEndDisplayChar = 0;
    // Set final pixels and write to display
    for (x = 0; x < 128; x++) {
        bByte = 0;
        if ((x >= 1) && (x <= 6)) {
            bByte = bVolByte[2];
        }
        // vol line
        if (x < 8) {
            bByte.7 = 1; // Set bit
        } else if ((x > 44) && (iCharsDisplayed < 10)) {
            if (iCharCol == 0) {
                // Get the character
                cCurrent = cDisplay[iCharsDisplayed];
            }
            // For the first 5 columns, get the byte from the relevant array
            if (iCharCol < 5) {
                if (cCurrent < 15)
                    bByte = dispChar[(cCurrent * 5) + iCharCol];
            }
            iCharCol++;
            // If past 6 columns, move to the next character. The 6th column remains empty
            if (iCharCol > 5) {
                iCharCol = 0;
                iCharsDisplayed++;
            }
        }
        i2cWrite(bByte);
    }

    i2cStop();
}

/***********************************************************************************
  TDA7317 methods
************************************************************************************/
void tda7317Write() {
    // B chip
    i2cStart();
    i2cWrite(tda7317_addr1); // send TDA7439 i2c address
    i2cWrite(iVolume); // send TDA7439 sub address
    i2cWrite(0x80 + iBands[8]); // 8kHz
    i2cWrite(0x90 + iBands[2]); // 120Hz
    i2cWrite(0xA0 + iBands[4]); // 500Hz
    i2cWrite(0xB0 + iBands[6]); // 2kHz
    i2cWrite(0xC0 + iBands[0]); // 30Hz
    i2cStop();
    
    delay_us(20);
    
    // A chip
    i2cStart();
    i2cWrite(tda7317_addr2); // send TDA7439 i2c address
    i2cWrite(0); // volume is always max on the second chip
    i2cWrite(0x80 + iBands[9]); // 16kHz
    i2cWrite(0x90 + iBands[3]); // 250Hz
    i2cWrite(0xA0 + iBands[5]); // 1kHz
    i2cWrite(0xB0 + iBands[7]); // 4kHz
    i2cWrite(0xC0 + iBands[1]); // 60Hz
    i2cStop();
}

/***********************************************************************************
  Rotary encoder turned
************************************************************************************/
char encoderCheck(char in, char encoder) {
    /*
    https://www.best-microcontroller-projects.com/rotary-encoder.html
    */
    char returnDirection = 0;
    unsigned char lPrevNextCode = rencPrevNextCode[encoder];
    unsigned char lStore = rencStore[encoder];
    lPrevNextCode = lPrevNextCode << 2;
    lPrevNextCode |= in;
    lPrevNextCode &= 0x0F;
    rencPrevNextCode[encoder] = lPrevNextCode;

    // If valid then store as 16 bit data.
    if (rencTable[lPrevNextCode]) {
        lStore = lStore << 4;
        lStore |= lPrevNextCode;
        rencStore[encoder] = lStore;
        
        // 0010 1011
        //if (lStore == 0x2B)
        if (lStore == 0x2A) 
            returnDirection = 4;
        // 0001 0111
        if (lStore == 0x17) 
            returnDirection = 3;

    }
    
    /*if(lStore != 0xFF) {
        i2cStart();
        i2cWrite(0x04);
        i2cWrite(lStore & 0xFF);
        i2cStop();
    }*/

    return returnDirection;
}

// Action for the first encoder - select the relevant band
void actionRotarySelect(char direction) {
    if (direction == 3) {
        if (iActiveBand == 10)
            iActiveBand = 0;
        else
            iActiveBand++;
        cTask.TASK_ENCODER_SELECT = 1;
    } else if (direction == 4) {
        if (iActiveBand == 0)
            iActiveBand = 10;
        else
            iActiveBand--;
        cTask.TASK_ENCODER_SELECT = 1;
    }
}

// Action for the second encoder - adjust the relevant band
void actionRotaryAdjust(char direction) {
    if (direction) {
        char iAdjustBand = iActiveBand - 1;
        char iBand = 0;
        if (iActiveBand != 0) {
            iBand = iBands[iAdjustBand];
        }
        if (direction == 3) {
            if (iActiveBand == 0) {
                // increase volume, which means decrementing attenuation iVolume
                if (iVolume > 0)
                    iVolume--;
            } else {
                // nothing happens if band is 7 (max boost)
                if (iBand < 7) {
                    // if band is 0 or in boost, increment boost
                    iBand++;
                } else if (iBand > 8) {
                    // if band is in cut, decrement cut
                    iBand--;
                }
                if (iBand == 8) {
                    // 8 should reset to 0
                    iBand = 0;
                }
                iBands[iAdjustBand] = iBand;
            }
            cTask.TASK_ENCODER_ADJUST = 1;
        } else if (direction == 4) {
            if (iActiveBand == 0) {
                // decrease volume, which means incrementing attenuation iVolume
                if (iVolume < 47) // Min is 47
                    iVolume++;
            } else {
                // nothing happens if band is 15 (max cut)
                // If currently 0 (no boost/cut), go to cut 9
                if (iBand == 0) {
                    // 8 should reset to 0
                    iBand = 9;
                } else if (iBand <= 7) {
                    // if band is in boost, decrement boost
                    iBand--;
                } else if (iBand < 15) {
                    // if band is in cut, cut further
                    iBand++;
                }
                iBands[iAdjustBand] = iBand;
            }
            cTask.TASK_ENCODER_ADJUST = 1;
        }
    }
}

/***********************************************************************************
  MAIN PROGRAM
************************************************************************************/
void main() {
    initialise();
    
    while (1) {
        // Task scheduler
        // If there are tasks to be performed, find out the
        // most recent task from the array and execute it
        while (cTask > 0) {
            if (cTask.TASK_ENCODER_SELECT) {
                // Selection encoder moved
                tda7317Write();
                ssd1306WriteAll();
                cTask.TASK_ENCODER_SELECT = 0;
            }
            if (cTask.TASK_ENCODER_ADJUST) {
                // Adjustment encoder moved
                tda7317Write();
                ssd1306WriteAll();
                cTask.TASK_ENCODER_ADJUST = 0;
            }
            if (cTask.TASK_TIMER1) {
                saveData();
                cTask.TASK_TIMER1 = 0;
            }
        }
        actionRotarySelect(encoderCheck((porta & 0x0C) >> 2, 0));
        actionRotaryAdjust(encoderCheck((porta & 0x30) >> 4, 1));
    }
}
