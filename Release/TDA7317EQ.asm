;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 8.01
;// License Type  : Pro License
;// Limitations   : PIC12,PIC16 max code size:Unlimited, max RAM banks:Unlimited
;/////////////////////////////////////////////////////////////////////////////////

	include "P16F1824.inc"
; Heap block 0, size:112 (0x00002080 - 0x000020EF)
__HEAP_BLOCK0_BANK               EQU	0x00000041
__HEAP_BLOCK0_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK0_END_OFFSET         EQU	0x0000006F
; Heap block 1, size:48 (0x000000A0 - 0x000000CF)
__HEAP_BLOCK1_BANK               EQU	0x00000001
__HEAP_BLOCK1_START_OFFSET       EQU	0x00000020
__HEAP_BLOCK1_END_OFFSET         EQU	0x0000004F
; Heap block 2, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK2_BANK               EQU	0x00000000
__HEAP_BLOCK2_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK2_END_OFFSET         EQU	0x00000000
; Heap block 3, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK3_BANK               EQU	0x00000000
__HEAP_BLOCK3_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK3_END_OFFSET         EQU	0x00000000
gbl_status                       EQU	0x00000003 ; bytes:1
__mul_8u_8_00007_arg_a           EQU	0x00000076 ; bytes:1
__mul_8u_8_00007_arg_b           EQU	0x00000077 ; bytes:1
CompTempVarRet379                EQU	0x0000007B ; bytes:2
__mul_8u_8_00007_1_i             EQU	0x00000078 ; bytes:1
__mul_8u_8_00007_1_t             EQU	0x00000079 ; bytes:2
__mul_16u__0000D_arg_a           EQU	0x00000075 ; bytes:2
__mul_16u__0000D_arg_b           EQU	0x00000077 ; bytes:2
CompTempVarRet382                EQU	0x0000007C ; bytes:2
__mul_16u__0000D_1_i             EQU	0x00000079 ; bytes:1
__mul_16u__0000D_1_t             EQU	0x0000007A ; bytes:2
gbl_indf0                        EQU	0x00000000 ; bytes:1
gbl_indf1                        EQU	0x00000001 ; bytes:1
gbl_pcl                          EQU	0x00000002 ; bytes:1
gbl_fsr0                         EQU	0x00000004 ; bytes:1
gbl_fsr0l                        EQU	0x00000004 ; bytes:1
gbl_fsr0h                        EQU	0x00000005 ; bytes:1
gbl_fsr1                         EQU	0x00000006 ; bytes:1
gbl_fsr1l                        EQU	0x00000006 ; bytes:1
gbl_fsr1h                        EQU	0x00000007 ; bytes:1
gbl_bsr                          EQU	0x00000008 ; bytes:1
gbl_wreg                         EQU	0x00000009 ; bytes:1
gbl_pclath                       EQU	0x0000000A ; bytes:1
gbl_intcon                       EQU	0x0000000B ; bytes:1
gbl_porta                        EQU	0x0000000C ; bytes:1
gbl_portc                        EQU	0x0000000E ; bytes:1
gbl_pir1                         EQU	0x00000011 ; bytes:1
gbl_pir2                         EQU	0x00000012 ; bytes:1
gbl_pir3                         EQU	0x00000013 ; bytes:1
gbl_tmr0                         EQU	0x00000015 ; bytes:1
gbl_tmr1                         EQU	0x00000016 ; bytes:1
gbl_tmr1l                        EQU	0x00000016 ; bytes:1
gbl_tmr1h                        EQU	0x00000017 ; bytes:1
gbl_t1con                        EQU	0x00000018 ; bytes:1
gbl_t1gcon                       EQU	0x00000019 ; bytes:1
gbl_tmr2                         EQU	0x0000001A ; bytes:1
gbl_pr2                          EQU	0x0000001B ; bytes:1
gbl_t2con                        EQU	0x0000001C ; bytes:1
gbl_cpscon0                      EQU	0x0000001E ; bytes:1
gbl_cpscon1                      EQU	0x0000001F ; bytes:1
gbl_trisa                        EQU	0x0000008C ; bytes:1
gbl_trisc                        EQU	0x0000008E ; bytes:1
gbl_pie1                         EQU	0x00000091 ; bytes:1
gbl_pie2                         EQU	0x00000092 ; bytes:1
gbl_pie3                         EQU	0x00000093 ; bytes:1
gbl_option_reg                   EQU	0x00000095 ; bytes:1
gbl_pcon                         EQU	0x00000096 ; bytes:1
gbl_wdtcon                       EQU	0x00000097 ; bytes:1
gbl_osctune                      EQU	0x00000098 ; bytes:1
gbl_osccon                       EQU	0x00000099 ; bytes:1
gbl_oscconl                      EQU	0x00000099 ; bytes:1
gbl_oscconh                      EQU	0x0000009A ; bytes:1
gbl_oscstat                      EQU	0x0000009A ; bytes:1
gbl_adres                        EQU	0x0000009B ; bytes:1
gbl_adresl                       EQU	0x0000009B ; bytes:1
gbl_adresh                       EQU	0x0000009C ; bytes:1
gbl_adcon0                       EQU	0x0000009D ; bytes:1
gbl_adcon1                       EQU	0x0000009E ; bytes:1
gbl_lata                         EQU	0x0000010C ; bytes:1
gbl_latc                         EQU	0x0000010E ; bytes:1
gbl_cm1con0                      EQU	0x00000111 ; bytes:1
gbl_cm1con1                      EQU	0x00000112 ; bytes:1
gbl_cm2con0                      EQU	0x00000113 ; bytes:1
gbl_cm2con1                      EQU	0x00000114 ; bytes:1
gbl_cmout                        EQU	0x00000115 ; bytes:1
gbl_borcon                       EQU	0x00000116 ; bytes:1
gbl_fvrcon                       EQU	0x00000117 ; bytes:1
gbl_daccon0                      EQU	0x00000118 ; bytes:1
gbl_daccon1                      EQU	0x00000119 ; bytes:1
gbl_srcon0                       EQU	0x0000011A ; bytes:1
gbl_srcon1                       EQU	0x0000011B ; bytes:1
gbl_apfcon0                      EQU	0x0000011D ; bytes:1
gbl_apfcon1                      EQU	0x0000011E ; bytes:1
gbl_ansela                       EQU	0x0000018C ; bytes:1
gbl_anselc                       EQU	0x0000018E ; bytes:1
gbl_eeadr                        EQU	0x00000191 ; bytes:1
gbl_eeadrl                       EQU	0x00000191 ; bytes:1
gbl_eeadrh                       EQU	0x00000192 ; bytes:1
gbl_eedata                       EQU	0x00000193 ; bytes:1
gbl_eedatl                       EQU	0x00000193 ; bytes:1
gbl_eedath                       EQU	0x00000194 ; bytes:1
gbl_eecon1                       EQU	0x00000195 ; bytes:1
gbl_eecon2                       EQU	0x00000196 ; bytes:1
gbl_rcreg                        EQU	0x00000199 ; bytes:1
gbl_txreg                        EQU	0x0000019A ; bytes:1
gbl_spbrg                        EQU	0x0000019B ; bytes:1
gbl_spbrgl                       EQU	0x0000019B ; bytes:1
gbl_spbrgh                       EQU	0x0000019C ; bytes:1
gbl_rcsta                        EQU	0x0000019D ; bytes:1
gbl_txsta                        EQU	0x0000019E ; bytes:1
gbl_baudcon                      EQU	0x0000019F ; bytes:1
gbl_wpua                         EQU	0x0000020C ; bytes:1
gbl_wpuc                         EQU	0x0000020E ; bytes:1
gbl_ssp1buf                      EQU	0x00000211 ; bytes:1
gbl_sspbuf                       EQU	0x00000211 ; bytes:1
gbl_ssp1add                      EQU	0x00000212 ; bytes:1
gbl_sspadd                       EQU	0x00000212 ; bytes:1
gbl_ssp1msk                      EQU	0x00000213 ; bytes:1
gbl_sspmsk                       EQU	0x00000213 ; bytes:1
gbl_ssp1stat                     EQU	0x00000214 ; bytes:1
gbl_sspstat                      EQU	0x00000214 ; bytes:1
gbl_ssp1con1                     EQU	0x00000215 ; bytes:1
gbl_sspcon                       EQU	0x00000215 ; bytes:1
gbl_sspcon1                      EQU	0x00000215 ; bytes:1
gbl_ssp1con2                     EQU	0x00000216 ; bytes:1
gbl_sspcon2                      EQU	0x00000216 ; bytes:1
gbl_ssp1con3                     EQU	0x00000217 ; bytes:1
gbl_sspcon3                      EQU	0x00000217 ; bytes:1
gbl_ccpr1l                       EQU	0x00000291 ; bytes:1
gbl_ccpr1h                       EQU	0x00000292 ; bytes:1
gbl_ccp1con                      EQU	0x00000293 ; bytes:1
gbl_pwm1con                      EQU	0x00000294 ; bytes:1
gbl_ccp1as                       EQU	0x00000295 ; bytes:1
gbl_eccp1as                      EQU	0x00000295 ; bytes:1
gbl_pstr1con                     EQU	0x00000296 ; bytes:1
gbl_ccpr2l                       EQU	0x00000298 ; bytes:1
gbl_ccpr2h                       EQU	0x00000299 ; bytes:1
gbl_ccp2con                      EQU	0x0000029A ; bytes:1
gbl_pwm2con                      EQU	0x0000029B ; bytes:1
gbl_ccp2as                       EQU	0x0000029C ; bytes:1
gbl_pstr2con                     EQU	0x0000029D ; bytes:1
gbl_ccptmrs                      EQU	0x0000029E ; bytes:1
gbl_ccpr3l                       EQU	0x00000311 ; bytes:1
gbl_ccpr3h                       EQU	0x00000312 ; bytes:1
gbl_ccp3con                      EQU	0x00000313 ; bytes:1
gbl_ccpr4l                       EQU	0x00000318 ; bytes:1
gbl_ccpr4h                       EQU	0x00000319 ; bytes:1
gbl_ccp4con                      EQU	0x0000031A ; bytes:1
gbl_inlvla                       EQU	0x0000038C ; bytes:1
gbl_inlvlc                       EQU	0x0000038E ; bytes:1
gbl_iocap                        EQU	0x00000391 ; bytes:1
gbl_iocan                        EQU	0x00000392 ; bytes:1
gbl_iocaf                        EQU	0x00000393 ; bytes:1
gbl_clkrcon                      EQU	0x0000039A ; bytes:1
gbl_mdcon                        EQU	0x0000039C ; bytes:1
gbl_mdsrc                        EQU	0x0000039D ; bytes:1
gbl_mdcarl                       EQU	0x0000039E ; bytes:1
gbl_mdcarh                       EQU	0x0000039F ; bytes:1
gbl_tmr4                         EQU	0x00000415 ; bytes:1
gbl_pr4                          EQU	0x00000416 ; bytes:1
gbl_t4con                        EQU	0x00000417 ; bytes:1
gbl_tmr6                         EQU	0x0000041C ; bytes:1
gbl_pr6                          EQU	0x0000041D ; bytes:1
gbl_t6con                        EQU	0x0000041E ; bytes:1
gbl_status_shad                  EQU	0x00000FE4 ; bytes:1
gbl_wreg_shad                    EQU	0x00000FE5 ; bytes:1
gbl_bsr_shad                     EQU	0x00000FE6 ; bytes:1
gbl_pclath_shad                  EQU	0x00000FE7 ; bytes:1
gbl_fsr0l_shad                   EQU	0x00000FE8 ; bytes:1
gbl_fsr0h_shad                   EQU	0x00000FE9 ; bytes:1
gbl_fsr1l_shad                   EQU	0x00000FEA ; bytes:1
gbl_fsr1h_shad                   EQU	0x00000FEB ; bytes:1
gbl_stkptr                       EQU	0x00000FED ; bytes:1
gbl_tosl                         EQU	0x00000FEE ; bytes:1
gbl_tosh                         EQU	0x00000FEF ; bytes:1
gbl_fsr                          EQU	0x00000004 ; bytes:1
gbl_indf                         EQU	0x00000000 ; bytes:1
gbl_cTask                        EQU	0x0000003E ; bytes:1
gbl_iBands                       EQU	0x00000030 ; bytes:10
gbl_iActiveBand                  EQU	0x0000003F ; bytes:1
gbl_iVolume                      EQU	0x00000040 ; bytes:1
gbl_iTimer1Count                 EQU	0x00000041 ; bytes:1
gbl_rencTable                    EQU	0x00000020 ; bytes:16
gbl_12_rencPrevNextCode          EQU	0x0000003A ; bytes:2
gbl_12_rencStore                 EQU	0x0000003C ; bytes:2
gbl_dispChar                     EQU	0x00000042 ; bytes:1
gbl_dispHeader                   EQU	0x00000043 ; bytes:1
saveData_00000_1_didWrite        EQU	0x00000044 ; bytes:1
saveData_00000_2_i               EQU	0x00000045 ; bytes:1
CompTempVarRet573                EQU	0x00000049 ; bytes:1
eepromWrit_00015_arg_address     EQU	0x00000046 ; bytes:1
eepromWrit_00015_arg_data        EQU	0x00000047 ; bytes:1
eepromWrit_00015_1_didWrite      EQU	0x00000048 ; bytes:1
CompTempVarRet574                EQU	0x0000004A ; bytes:1
eepromWrit_00015_4_intconsave    EQU	0x00000049 ; bytes:1
readData_00000_5_i               EQU	0x00000044 ; bytes:1
eepromRead_00000_arg_address     EQU	0x00000049 ; bytes:1
ssd1306Wri_00018_1_x             EQU	0x00000044 ; bytes:1
ssd1306Wri_00018_1_i             EQU	0x00000045 ; bytes:1
ssd1306Wri_00018_1_iVolumeAlt    EQU	0x00000046 ; bytes:1
ssd1306Wri_00018_1_bVolByte      EQU	0x00000047 ; bytes:3
ssd1306Wri_00018_1_bBandBytes    EQU	0x0000004A ; bytes:20
ssd1306Wri_00018_1_cDisplay      EQU	0x0000005E ; bytes:10
ssd1306Wri_00018_1_showMinus     EQU	0x00000068 ; bytes:1
ssd1306Wri_00018_1_showPlus      EQU	0x00000069 ; bytes:1
ssd1306Wri_00018_1_iEndChars     EQU	0x0000006A ; bytes:1
ssd1306Wri_00018_1_bByte         EQU	0x0000006B ; bytes:1
ssd1306Wri_00018_1_iCheckBand    EQU	0x0000006C ; bytes:1
ssd1306Wri_00018_1_iBandArea     EQU	0x0000006D ; bytes:1
ssd1306Wri_00018_1_iCharCol      EQU	0x0000006E ; bytes:1
ssd1306Wri_00018_1_iDoDisp_00019 EQU	0x0000006F ; bytes:1
ssd1306Wri_00018_1_iCharsD_0001A EQU	0x00000070 ; bytes:1
ssd1306Wri_00018_1_cCurrent      EQU	0x00000071 ; bytes:1
ssd1306Wri_00018_1_iDoEndD_0001B EQU	0x00000072 ; bytes:1
ssd1306Wri_00018_26_iBand        EQU	0x00000073 ; bytes:1
ssd1306Wri_00018_27_bBandByte    EQU	0x00000074 ; bytes:1
ssd1306Wri_00018_34_iBand        EQU	0x00000073 ; bytes:1
ssd1306Wri_00018_35_bBandByte    EQU	0x00000074 ; bytes:1
ssd1306Wri_00018_43_iVolCalc     EQU	0x00000073 ; bytes:2
ssd1306Wri_00018_71_iBand        EQU	0x00000073 ; bytes:1
ssd1306Wri_00018_72_iBandCalc    EQU	0x00000074 ; bytes:1
CompTempVar629                   EQU	0x00000073 ; bytes:1
CompTempVar637                   EQU	0x00000073 ; bytes:1
i2cWrite_00000_arg_data          EQU	0x00000073 ; bytes:1
encoderChe_0001E_arg_in          EQU	0x00000045 ; bytes:1
encoderChe_0001E_arg_encoder     EQU	0x00000046 ; bytes:1
CompTempVarRet658                EQU	0x0000004A ; bytes:1
encoderChe_0001E_1_returnD_0001F EQU	0x00000047 ; bytes:1
encoderChe_0001E_1_lPrevNextCode EQU	0x00000048 ; bytes:1
encoderChe_0001E_1_lStore        EQU	0x00000049 ; bytes:1
actionRota_00020_arg_direction   EQU	0x00000044 ; bytes:1
actionRota_00021_arg_direction   EQU	0x00000044 ; bytes:1
actionRota_00021_2_iAdjustBand   EQU	0x00000045 ; bytes:1
actionRota_00021_2_iBand         EQU	0x00000046 ; bytes:1
CompTempVar673                   EQU	0x00000047 ; bytes:1
delay_us_00000_arg_del           EQU	0x00000044 ; bytes:1
delay_ms_00000_arg_del           EQU	0x00000045 ; bytes:1
delay_s_00000_arg_del            EQU	0x00000044 ; bytes:1
__rom_get_00000_arg_objNumb      EQU	0x00000074 ; bytes:1
__rom_get_00000_arg_idx          EQU	0x00000075 ; bytes:1
__rom_get_00000_1_romAddr        EQU	0x00000076 ; bytes:2
	ORG 0x00000000
	GOTO	_startup
	ORG 0x00000004
	MOVLP 0x00
	GOTO	interrupt
	ORG 0x00000007
delay_us_00000
; { delay_us ; function begin
label1
	NOP
	DECFSZ delay_us_00000_arg_del, F
	GOTO	label1
	RETURN
; } delay_us function end

	ORG 0x0000000B
delay_ms_00000
; { delay_ms ; function begin
	MOVF delay_ms_00000_arg_del, F
	BTFSS STATUS,Z
	GOTO	label2
	RETURN
label2
	MOVLW 0xF9
label3
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	ADDLW 0xFF
	BTFSS STATUS,Z
	GOTO	label3
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	DECFSZ delay_ms_00000_arg_del, F
	GOTO	label2
	RETURN
; } delay_ms function end

	ORG 0x0000002F
__rom_get_00000
; { __rom_get ; function begin
	MOVF __rom_get_00000_arg_objNumb, W
	MOVWF __rom_get_00000_1_romAddr+D'1'
	CLRF __rom_get_00000_1_romAddr
	BCF STATUS,C
	RLF __rom_get_00000_1_romAddr+D'1', F
	RLF __rom_get_00000_1_romAddr, F
	RLF __rom_get_00000_1_romAddr+D'1', F
	RLF __rom_get_00000_1_romAddr, F
	ADDWF __rom_get_00000_1_romAddr+D'1', F
	BTFSC STATUS,C
	INCF __rom_get_00000_1_romAddr, F
	ADDWF __rom_get_00000_1_romAddr+D'1', F
	BTFSC STATUS,C
	INCF __rom_get_00000_1_romAddr, F
	MOVLW	LOW( label4 )
	ADDWF __rom_get_00000_1_romAddr+D'1', F
	BTFSC STATUS,C
	INCF __rom_get_00000_1_romAddr, F
	MOVLW	HIGH( label4 )
	ADDWF __rom_get_00000_1_romAddr, W
	MOVWF PCLATH
	MOVF __rom_get_00000_arg_idx, W
	MOVWF __rom_get_00000_1_romAddr
	MOVF __rom_get_00000_1_romAddr+D'1', W
	MOVWF PCL
label4
	MOVLW	HIGH( label5 )
	MOVWF PCLATH
	MOVLW	HIGH( label6 )
	MOVWF __rom_get_00000_1_romAddr+D'1'
	MOVLW	LOW( label6 )
	GOTO	label5
	MOVLW	HIGH( label5 )
	MOVWF PCLATH
	MOVLW	HIGH( label7 )
	MOVWF __rom_get_00000_1_romAddr+D'1'
	MOVLW	LOW( label7 )
	GOTO	label5
	MOVLW	HIGH( label8 )
	MOVWF __rom_get_00000_1_romAddr+D'1'
	MOVLW	LOW( label8 )
label5
	ADDWF __rom_get_00000_1_romAddr, F
	BTFSC STATUS,C
	INCF __rom_get_00000_1_romAddr+D'1', F
	MOVF __rom_get_00000_1_romAddr+D'1', W
	MOVWF PCLATH
	MOVF __rom_get_00000_1_romAddr, W
	MOVWF PCL
label6
	RETLW 0x00
	RETLW 0x01
	RETLW 0x01
	RETLW 0x00
	RETLW 0x01
	RETLW 0x00
	RETLW 0x00
	RETLW 0x01
	RETLW 0x01
	RETLW 0x00
	RETLW 0x00
	RETLW 0x01
	RETLW 0x00
	RETLW 0x01
	RETLW 0x01
	RETLW 0x00
label7
	RETLW 0x3E
	RETLW 0x51
	RETLW 0x49
	RETLW 0x45
	RETLW 0x3E
	RETLW 0x00
	RETLW 0x42
	RETLW 0x7F
	RETLW 0x40
	RETLW 0x00
	RETLW 0x72
	RETLW 0x49
	RETLW 0x49
	RETLW 0x49
	RETLW 0x46
	RETLW 0x21
	RETLW 0x41
	RETLW 0x49
	RETLW 0x4D
	RETLW 0x33
	RETLW 0x18
	RETLW 0x14
	RETLW 0x12
	RETLW 0x7F
	RETLW 0x10
	RETLW 0x27
	RETLW 0x45
	RETLW 0x45
	RETLW 0x45
	RETLW 0x39
	RETLW 0x3C
	RETLW 0x4A
	RETLW 0x49
	RETLW 0x49
	RETLW 0x31
	RETLW 0x41
	RETLW 0x21
	RETLW 0x11
	RETLW 0x09
	RETLW 0x07
	RETLW 0x36
	RETLW 0x49
	RETLW 0x49
	RETLW 0x49
	RETLW 0x36
	RETLW 0x46
	RETLW 0x49
	RETLW 0x49
	RETLW 0x29
	RETLW 0x1E
	RETLW 0x00
	RETLW 0x00
	RETLW 0x60
	RETLW 0x60
	RETLW 0x00
	RETLW 0x00
	RETLW 0x08
	RETLW 0x08
	RETLW 0x08
	RETLW 0x00
	RETLW 0x08
	RETLW 0x08
	RETLW 0x3E
	RETLW 0x08
	RETLW 0x08
	RETLW 0x38
	RETLW 0x44
	RETLW 0x44
	RETLW 0x28
	RETLW 0x7F
	RETLW 0x7F
	RETLW 0x49
	RETLW 0x49
	RETLW 0x49
	RETLW 0x36
label8
	RETLW 0x0F
	RETLW 0x10
	RETLW 0x0F
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x10
	RETLW 0x10
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x11
	RETLW 0x15
	RETLW 0x1F
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x11
	RETLW 0x1F
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x15
	RETLW 0x1D
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x11
	RETLW 0x1F
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x00
	RETLW 0x1D
	RETLW 0x15
	RETLW 0x17
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x11
	RETLW 0x1F
	RETLW 0x00
	RETLW 0x00
	RETLW 0x1D
	RETLW 0x15
	RETLW 0x17
	RETLW 0x00
	RETLW 0x17
	RETLW 0x15
	RETLW 0x1D
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x11
	RETLW 0x1F
	RETLW 0x00
	RETLW 0x00
	RETLW 0x17
	RETLW 0x15
	RETLW 0x1D
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x11
	RETLW 0x1F
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x11
	RETLW 0x1F
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x08
	RETLW 0x14
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x1D
	RETLW 0x15
	RETLW 0x17
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x08
	RETLW 0x14
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x0F
	RETLW 0x08
	RETLW 0x1C
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x08
	RETLW 0x14
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x15
	RETLW 0x1F
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x08
	RETLW 0x14
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x15
	RETLW 0x1D
	RETLW 0x00
	RETLW 0x1F
	RETLW 0x08
	RETLW 0x14
; } __rom_get function end

	ORG 0x00000139
delay_s_00000
; { delay_s ; function begin
label9
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	DECFSZ delay_s_00000_arg_del, F
	GOTO	label9
	RETURN
; } delay_s function end

	ORG 0x00000148
i2cWait_00000
; { i2cWait ; function begin
label10
	MOVLW 0x1F
	MOVLB 0x04
	ANDWF gbl_sspcon2, W
	BTFSC STATUS,Z
	BTFSC gbl_sspstat,2
	GOTO	label10
	RETURN
; } i2cWait function end

	ORG 0x0000014F
i2cWrite_00000
; { i2cWrite ; function begin
	CALL i2cWait_00000
	MOVF i2cWrite_00000_arg_data, W
	MOVWF gbl_sspbuf
	RETURN
; } i2cWrite function end

	ORG 0x00000153
i2cStart_00000
; { i2cStart ; function begin
	CALL i2cWait_00000
	BSF gbl_sspcon2,0
	RETURN
; } i2cStart function end

	ORG 0x00000156
ssd1306Sta_00016
; { ssd1306StartCommand ; function begin
	CALL i2cStart_00000
	MOVLW 0x78
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CLRF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	RETURN
; } ssd1306StartCommand function end

	ORG 0x0000015D
i2cStop_00000
; { i2cStop ; function begin
	CALL i2cWait_00000
	BSF gbl_sspcon2,2
	RETURN
; } i2cStop function end

	ORG 0x00000160
eepromRead_00000
; { eepromRead ; function begin
	MOVF eepromRead_00000_arg_address, W
	MOVLB 0x03
	MOVWF gbl_eeadr
	BCF gbl_eecon1,7
	BSF gbl_eecon1,0
	MOVF gbl_eedata, W
	MOVLB 0x00
	MOVWF CompTempVarRet574
	RETURN
; } eepromRead function end

	ORG 0x00000169
__mul_8u_8_00007
; { __mul_8u_8u ; function begin
	CLRF __mul_8u_8_00007_1_i
	CLRF CompTempVarRet379
	CLRF CompTempVarRet379+D'1'
	MOVF __mul_8u_8_00007_arg_a, W
	MOVWF __mul_8u_8_00007_1_t
	CLRF __mul_8u_8_00007_1_t+D'1'
label11
	BTFSC __mul_8u_8_00007_1_i,3
	RETURN
	BTFSS __mul_8u_8_00007_arg_b,0
	GOTO	label12
	MOVF __mul_8u_8_00007_1_t, W
	ADDWF CompTempVarRet379, F
	BTFSC gbl_status,0
	INCF CompTempVarRet379+D'1', F
	MOVF __mul_8u_8_00007_1_t+D'1', W
	ADDWF CompTempVarRet379+D'1', F
label12
	RRF __mul_8u_8_00007_arg_b, F
	BCF gbl_status,0
	RLF __mul_8u_8_00007_1_t, F
	RLF __mul_8u_8_00007_1_t+D'1', F
	INCF __mul_8u_8_00007_1_i, F
	GOTO	label11
; } __mul_8u_8u function end

	ORG 0x0000017F
__mul_16u__0000D
; { __mul_16u_16u__16 ; function begin
	CLRF __mul_16u__0000D_1_i
	CLRF CompTempVarRet382
	CLRF CompTempVarRet382+D'1'
	MOVF __mul_16u__0000D_arg_a, W
	MOVWF __mul_16u__0000D_1_t
	MOVF __mul_16u__0000D_arg_a+D'1', W
	MOVWF __mul_16u__0000D_1_t+D'1'
label13
	BTFSC __mul_16u__0000D_1_i,4
	RETURN
	BTFSS __mul_16u__0000D_arg_b,0
	GOTO	label14
	MOVF __mul_16u__0000D_1_t, W
	ADDWF CompTempVarRet382, F
	MOVF __mul_16u__0000D_1_t+D'1', W
	BTFSC gbl_status,0
	INCFSZ __mul_16u__0000D_1_t+D'1', W
	ADDWF CompTempVarRet382+D'1', F
label14
	BCF gbl_status,0
	RRF __mul_16u__0000D_arg_b+D'1', F
	RRF __mul_16u__0000D_arg_b, F
	BCF gbl_status,0
	RLF __mul_16u__0000D_1_t, F
	RLF __mul_16u__0000D_1_t+D'1', F
	INCF __mul_16u__0000D_1_i, F
	GOTO	label13
; } __mul_16u_16u__16 function end

	ORG 0x00000198
tda7317Wri_0001C
; { tda7317Write ; function begin
	CALL i2cStart_00000
	MOVLW 0x84
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLB 0x00
	MOVF gbl_iVolume, W
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLB 0x00
	MOVF gbl_iBands+D'8', W
	ADDLW 0x80
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLB 0x00
	MOVF gbl_iBands+D'2', W
	ADDLW 0x90
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLB 0x00
	MOVF gbl_iBands+D'4', W
	ADDLW 0xA0
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLB 0x00
	MOVF gbl_iBands+D'6', W
	ADDLW 0xB0
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLB 0x00
	MOVF gbl_iBands, W
	ADDLW 0xC0
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CALL i2cStop_00000
	MOVLW 0x14
	MOVLB 0x00
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	CALL i2cStart_00000
	MOVLW 0x86
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CLRF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLB 0x00
	MOVF gbl_iBands+D'9', W
	ADDLW 0x80
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLB 0x00
	MOVF gbl_iBands+D'3', W
	ADDLW 0x90
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLB 0x00
	MOVF gbl_iBands+D'5', W
	ADDLW 0xA0
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLB 0x00
	MOVF gbl_iBands+D'7', W
	ADDLW 0xB0
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLB 0x00
	MOVF gbl_iBands+D'1', W
	ADDLW 0xC0
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CALL i2cStop_00000
	RETURN
; } tda7317Write function end

	ORG 0x000001DF
ssd1306Wri_00018
; { ssd1306WriteAll ; function begin
	MOVLB 0x00
	MOVF gbl_iVolume, W
	SUBLW 0x2F
	MOVWF ssd1306Wri_00018_1_iVolumeAlt
	MOVLW 0xFF
	MOVWF ssd1306Wri_00018_1_bVolByte
	MOVWF ssd1306Wri_00018_1_bVolByte+D'1'
	MOVWF ssd1306Wri_00018_1_bVolByte+D'2'
	MOVLW 0x2E
	SUBWF ssd1306Wri_00018_1_iVolumeAlt, W
	BTFSC STATUS,C
	GOTO	label16
	MOVLW 0x2E
	MOVWF ssd1306Wri_00018_1_i
label15
	MOVF ssd1306Wri_00018_1_i, W
	SUBWF ssd1306Wri_00018_1_iVolumeAlt, W
	BTFSC STATUS,C
	GOTO	label16
	MOVF ssd1306Wri_00018_1_bVolByte, F
	BTFSC STATUS,Z
	GOTO	label16
	MOVF ssd1306Wri_00018_1_bVolByte, F
	LSLF ssd1306Wri_00018_1_bVolByte, F
	MOVLW 0x02
	SUBWF ssd1306Wri_00018_1_i, F
	GOTO	label15
label16
	MOVLW 0x1E
	SUBWF ssd1306Wri_00018_1_iVolumeAlt, W
	BTFSC STATUS,C
	GOTO	label18
	MOVLW 0x1E
	MOVWF ssd1306Wri_00018_1_i
label17
	MOVF ssd1306Wri_00018_1_i, W
	SUBWF ssd1306Wri_00018_1_iVolumeAlt, W
	BTFSC STATUS,C
	GOTO	label18
	MOVF ssd1306Wri_00018_1_bVolByte+D'1', F
	BTFSC STATUS,Z
	GOTO	label18
	MOVF ssd1306Wri_00018_1_bVolByte+D'1', F
	LSLF ssd1306Wri_00018_1_bVolByte+D'1', F
	MOVLW 0x02
	SUBWF ssd1306Wri_00018_1_i, F
	GOTO	label17
label18
	MOVLW 0x0E
	SUBWF ssd1306Wri_00018_1_iVolumeAlt, W
	BTFSC STATUS,C
	GOTO	label20
	MOVLW 0x0E
	MOVWF ssd1306Wri_00018_1_i
label19
	MOVF ssd1306Wri_00018_1_i, W
	SUBWF ssd1306Wri_00018_1_iVolumeAlt, W
	BTFSC STATUS,C
	GOTO	label20
	MOVF ssd1306Wri_00018_1_bVolByte+D'2', F
	BTFSC STATUS,Z
	GOTO	label20
	MOVF ssd1306Wri_00018_1_bVolByte+D'2', F
	LSLF ssd1306Wri_00018_1_bVolByte+D'2', F
	MOVLW 0x02
	SUBWF ssd1306Wri_00018_1_i, F
	GOTO	label19
label20
	MOVLW	HIGH(ssd1306Wri_00018_1_bBandBytes)

	MOVWF FSR0H
	MOVLW LOW(ssd1306Wri_00018_1_bBandBytes+D'0')
	MOVWF FSR0L
	MOVLW 0x13
	MOVWF ssd1306Wri_00018_1_bBandBytes+D'19'
label21
	CLRF INDF0
	INCF FSR0L, F
	DECFSZ ssd1306Wri_00018_1_bBandBytes+D'19', F
	GOTO	label21
	CLRF ssd1306Wri_00018_1_x
label22
	MOVLW 0x0A
	SUBWF ssd1306Wri_00018_1_x, W
	BTFSC STATUS,C
	GOTO	label26
	MOVLW	HIGH(gbl_iBands)

	MOVWF FSR0H
	MOVLW LOW(gbl_iBands+D'0')
	MOVWF FSR0L
	MOVF ssd1306Wri_00018_1_x, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF ssd1306Wri_00018_26_iBand
	MOVLW 0x08
	SUBWF ssd1306Wri_00018_26_iBand, W
	BTFSC STATUS,C
	GOTO	label25
	MOVLW 0xFE
	MOVWF ssd1306Wri_00018_27_bBandByte
	MOVLW 0x07
	MOVWF ssd1306Wri_00018_1_i
label23
	MOVF ssd1306Wri_00018_1_i, W
	SUBWF ssd1306Wri_00018_26_iBand, W
	BTFSC STATUS,C
	GOTO	label24
	MOVF ssd1306Wri_00018_27_bBandByte, F
	BTFSC STATUS,Z
	GOTO	label24
	MOVF ssd1306Wri_00018_27_bBandByte, F
	LSLF ssd1306Wri_00018_27_bBandByte, F
	DECF ssd1306Wri_00018_1_i, F
	GOTO	label23
label24
	MOVLW	HIGH(ssd1306Wri_00018_1_bBandBytes)

	MOVWF FSR0H
	MOVLW LOW(ssd1306Wri_00018_1_bBandBytes+D'0')
	MOVWF FSR0L
	MOVF ssd1306Wri_00018_1_x, W
	ADDWF FSR0L, F
	MOVF ssd1306Wri_00018_27_bBandByte, W
	MOVWF INDF0
label25
	INCF ssd1306Wri_00018_1_x, F
	GOTO	label22
label26
	CLRF ssd1306Wri_00018_1_x
label27
	MOVLW 0x0A
	SUBWF ssd1306Wri_00018_1_x, W
	BTFSC STATUS,C
	GOTO	label31
	MOVLW	HIGH(gbl_iBands)

	MOVWF FSR0H
	MOVLW LOW(gbl_iBands+D'0')
	MOVWF FSR0L
	MOVF ssd1306Wri_00018_1_x, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF ssd1306Wri_00018_34_iBand
	MOVF ssd1306Wri_00018_34_iBand, W
	SUBLW 0x08
	BTFSC STATUS,C
	GOTO	label30
	MOVLW 0x7F
	MOVWF ssd1306Wri_00018_35_bBandByte
	MOVLW 0x0F
	MOVWF ssd1306Wri_00018_1_i
label28
	MOVF ssd1306Wri_00018_1_i, W
	SUBWF ssd1306Wri_00018_34_iBand, W
	BTFSC STATUS,C
	GOTO	label29
	MOVF ssd1306Wri_00018_35_bBandByte, F
	BTFSC STATUS,Z
	GOTO	label29
	MOVF ssd1306Wri_00018_35_bBandByte, F
	LSRF ssd1306Wri_00018_35_bBandByte, F
	DECF ssd1306Wri_00018_1_i, F
	GOTO	label28
label29
	MOVLW	HIGH(ssd1306Wri_00018_1_bBandBytes)

	MOVWF FSR0H
	MOVLW LOW(ssd1306Wri_00018_1_bBandBytes+D'0')
	MOVWF FSR0L
	MOVLW 0x0A
	ADDWF ssd1306Wri_00018_1_x, W
	ADDWF FSR0L, F
	MOVF ssd1306Wri_00018_35_bBandByte, W
	MOVWF INDF0
label30
	INCF ssd1306Wri_00018_1_x, F
	GOTO	label27
label31
	CLRF ssd1306Wri_00018_1_cDisplay
	CLRF ssd1306Wri_00018_1_cDisplay+D'1'
	CLRF ssd1306Wri_00018_1_cDisplay+D'2'
	CLRF ssd1306Wri_00018_1_cDisplay+D'3'
	CLRF ssd1306Wri_00018_1_cDisplay+D'4'
	CLRF ssd1306Wri_00018_1_cDisplay+D'5'
	CLRF ssd1306Wri_00018_1_cDisplay+D'6'
	CLRF ssd1306Wri_00018_1_cDisplay+D'7'
	CLRF ssd1306Wri_00018_1_cDisplay+D'8'
	CLRF ssd1306Wri_00018_1_cDisplay+D'9'
	CLRF ssd1306Wri_00018_1_showMinus
	CLRF ssd1306Wri_00018_1_showPlus
	MOVLW 0x03
	MOVWF ssd1306Wri_00018_1_iEndChars
	MOVF gbl_iActiveBand, F
	BTFSS STATUS,Z
	GOTO	label45
	MOVF gbl_iVolume, F
	BTFSC STATUS,Z
	GOTO	label44
	MOVLW 0x0B
	MOVWF ssd1306Wri_00018_1_cDisplay
	MOVF gbl_iVolume, W
	MOVWF __mul_16u__0000D_arg_a
	CLRF __mul_16u__0000D_arg_a+D'1'
	MOVLW 0x77
	MOVWF __mul_16u__0000D_arg_b
	MOVLW 0x01
	MOVWF __mul_16u__0000D_arg_b+D'1'
	CALL __mul_16u__0000D
	MOVF CompTempVarRet382, W
	MOVWF ssd1306Wri_00018_43_iVolCalc
	MOVF CompTempVarRet382+D'1', W
	MOVWF ssd1306Wri_00018_43_iVolCalc+D'1'
	MOVLW 0x27
	SUBWF ssd1306Wri_00018_43_iVolCalc+D'1', W
	BTFSS STATUS,Z
	GOTO	label32
	MOVLW 0x10
	SUBWF ssd1306Wri_00018_43_iVolCalc, W
label32
	BTFSS STATUS,C
	GOTO	label35
label33
	MOVLW 0x27
	SUBWF ssd1306Wri_00018_43_iVolCalc+D'1', W
	BTFSS STATUS,Z
	GOTO	label34
	MOVLW 0x10
	SUBWF ssd1306Wri_00018_43_iVolCalc, W
label34
	BTFSS STATUS,C
	GOTO	label36
	MOVLW 0x10
	SUBWF ssd1306Wri_00018_43_iVolCalc, F
	MOVLW 0x27
	BTFSS STATUS,C
	MOVLW 0x28
	SUBWF ssd1306Wri_00018_43_iVolCalc+D'1', F
	INCF ssd1306Wri_00018_1_cDisplay+D'1', F
	GOTO	label33
label35
	MOVLW 0x0F
	MOVWF ssd1306Wri_00018_1_cDisplay+D'1'
label36
	MOVLW 0x03
	SUBWF ssd1306Wri_00018_43_iVolCalc+D'1', W
	BTFSS STATUS,Z
	GOTO	label37
	MOVLW 0xE8
	SUBWF ssd1306Wri_00018_43_iVolCalc, W
label37
	BTFSS STATUS,C
	GOTO	label38
	MOVLW 0xE8
	SUBWF ssd1306Wri_00018_43_iVolCalc, F
	MOVLW 0x03
	BTFSS STATUS,C
	MOVLW 0x04
	SUBWF ssd1306Wri_00018_43_iVolCalc+D'1', F
	INCF ssd1306Wri_00018_1_cDisplay+D'2', F
	GOTO	label36
label38
	MOVF ssd1306Wri_00018_43_iVolCalc, W
	SUBLW 0x00
	BTFSC STATUS,C
	MOVF ssd1306Wri_00018_43_iVolCalc+D'1', W
	BTFSC STATUS,Z
	GOTO	label50
	MOVLW 0x0A
	MOVWF ssd1306Wri_00018_1_cDisplay+D'3'
label39
	MOVLW 0x00
	SUBWF ssd1306Wri_00018_43_iVolCalc+D'1', W
	BTFSS STATUS,Z
	GOTO	label40
	MOVLW 0x64
	SUBWF ssd1306Wri_00018_43_iVolCalc, W
label40
	BTFSS STATUS,C
	GOTO	label41
	MOVLW 0x64
	SUBWF ssd1306Wri_00018_43_iVolCalc, F
	MOVF ssd1306Wri_00018_43_iVolCalc+D'1', F
	BTFSS STATUS,C
	DECF ssd1306Wri_00018_43_iVolCalc+D'1', F
	INCF ssd1306Wri_00018_1_cDisplay+D'4', F
	MOVLW 0x05
	MOVWF ssd1306Wri_00018_1_iEndChars
	GOTO	label39
label41
	MOVLW 0x00
	SUBWF ssd1306Wri_00018_43_iVolCalc+D'1', W
	BTFSS STATUS,Z
	GOTO	label42
	MOVLW 0x0A
	SUBWF ssd1306Wri_00018_43_iVolCalc, W
label42
	BTFSS STATUS,C
	GOTO	label43
	MOVLW 0x0A
	SUBWF ssd1306Wri_00018_43_iVolCalc, F
	MOVF ssd1306Wri_00018_43_iVolCalc+D'1', F
	BTFSS STATUS,C
	DECF ssd1306Wri_00018_43_iVolCalc+D'1', F
	INCF ssd1306Wri_00018_1_cDisplay+D'5', F
	MOVLW 0x06
	MOVWF ssd1306Wri_00018_1_iEndChars
	GOTO	label41
label43
	MOVF ssd1306Wri_00018_43_iVolCalc, W
	SUBLW 0x00
	BTFSC STATUS,C
	MOVF ssd1306Wri_00018_43_iVolCalc+D'1', W
	BTFSC STATUS,Z
	GOTO	label50
	MOVF ssd1306Wri_00018_43_iVolCalc, W
	MOVWF ssd1306Wri_00018_1_cDisplay+D'6'
	MOVLW 0x07
	MOVWF ssd1306Wri_00018_1_iEndChars
	GOTO	label50
label44
	MOVLW 0x0F
	MOVWF ssd1306Wri_00018_1_cDisplay
	MOVWF ssd1306Wri_00018_1_cDisplay+D'1'
	MOVLW 0x03
	MOVWF ssd1306Wri_00018_1_iEndChars
	GOTO	label50
label45
	MOVLW	HIGH(gbl_iBands)

	MOVWF FSR0H
	MOVLW LOW(gbl_iBands+D'0')
	MOVWF FSR0L
	DECF gbl_iActiveBand, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF ssd1306Wri_00018_71_iBand
	MOVF ssd1306Wri_00018_71_iBand, W
	SUBLW 0x00
	BTFSC STATUS,C
	GOTO	label49
	MOVF ssd1306Wri_00018_71_iBand, W
	SUBLW 0x07
	BTFSS STATUS,C
	GOTO	label46
	MOVLW 0x0C
	MOVWF ssd1306Wri_00018_1_cDisplay
	GOTO	label47
label46
	MOVF ssd1306Wri_00018_71_iBand, W
	SUBLW 0x08
	BTFSC STATUS,C
	GOTO	label47
	MOVLW 0x0B
	MOVWF ssd1306Wri_00018_1_cDisplay
	MOVLW 0x08
	SUBWF ssd1306Wri_00018_71_iBand, F
label47
	MOVF ssd1306Wri_00018_71_iBand, W
	MOVWF ssd1306Wri_00018_72_iBandCalc
	LSLF ssd1306Wri_00018_72_iBandCalc, F
	MOVLW 0x0A
	SUBWF ssd1306Wri_00018_72_iBandCalc, W
	BTFSS STATUS,C
	GOTO	label48
	MOVLW 0x01
	MOVWF ssd1306Wri_00018_1_cDisplay+D'1'
	MOVLW 0x0A
	SUBWF ssd1306Wri_00018_72_iBandCalc, F
	MOVF ssd1306Wri_00018_72_iBandCalc, W
	MOVWF ssd1306Wri_00018_1_cDisplay+D'2'
	GOTO	label50
label48
	MOVF ssd1306Wri_00018_72_iBandCalc, W
	MOVWF ssd1306Wri_00018_1_cDisplay+D'1'
	MOVLW 0x02
	MOVWF ssd1306Wri_00018_1_iEndChars
	GOTO	label50
label49
	MOVLW 0x0F
	MOVWF ssd1306Wri_00018_1_cDisplay
	MOVLW 0x02
	MOVWF ssd1306Wri_00018_1_iEndChars
label50
	MOVLW	HIGH(ssd1306Wri_00018_1_cDisplay)

	MOVWF FSR0H
	MOVLW LOW(ssd1306Wri_00018_1_cDisplay+D'0')
	MOVWF FSR0L
	MOVF ssd1306Wri_00018_1_iEndChars, W
	ADDWF FSR0L, F
	MOVLW 0x0F
	MOVWF INDF0
	INCF ssd1306Wri_00018_1_iEndChars, F
	MOVLW LOW(ssd1306Wri_00018_1_cDisplay+D'0')
	MOVWF FSR0L
	MOVF ssd1306Wri_00018_1_iEndChars, W
	ADDWF FSR0L, F
	MOVLW 0x0D
	MOVWF INDF0
	INCF ssd1306Wri_00018_1_iEndChars, F
	MOVLW LOW(ssd1306Wri_00018_1_cDisplay+D'0')
	MOVWF FSR0L
	MOVF ssd1306Wri_00018_1_iEndChars, W
	ADDWF FSR0L, F
	MOVLW 0x0E
	MOVWF INDF0
	INCF ssd1306Wri_00018_1_iEndChars, F
label51
	MOVF ssd1306Wri_00018_1_iEndChars, W
	SUBLW 0x09
	BTFSS STATUS,C
	GOTO	label52
	MOVLW	HIGH(ssd1306Wri_00018_1_cDisplay)

	MOVWF FSR0H
	MOVLW LOW(ssd1306Wri_00018_1_cDisplay+D'0')
	MOVWF FSR0L
	MOVF ssd1306Wri_00018_1_iEndChars, W
	ADDWF FSR0L, F
	MOVLW 0x0F
	MOVWF INDF0
	INCF ssd1306Wri_00018_1_iEndChars, F
	GOTO	label51
label52
	CALL ssd1306Sta_00016
	MOVLW 0x22
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CLRF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0x04
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0x21
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CLRF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0x7F
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CALL i2cStop_00000
	CALL i2cStart_00000
	MOVLW 0x78
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0x40
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0x01
	MOVLB 0x00
	MOVWF ssd1306Wri_00018_1_iCheckBand
	CLRF ssd1306Wri_00018_1_iBandArea
	CLRF ssd1306Wri_00018_1_x
label53
	MOVLW 0x80
	SUBWF ssd1306Wri_00018_1_x, W
	BTFSC STATUS,C
	GOTO	label57
	MOVF gbl_dispHeader, W
	MOVWF __rom_get_00000_arg_objNumb
	MOVF ssd1306Wri_00018_1_x, W
	MOVWF __rom_get_00000_arg_idx
	CALL __rom_get_00000
	MOVWF ssd1306Wri_00018_1_bByte
	MOVLW 0x08
	SUBWF ssd1306Wri_00018_1_x, W
	MOVLP 0x00
	BTFSC STATUS,C
	GOTO	label54
	MOVF gbl_iActiveBand, F
	BTFSC STATUS,Z
	BSF ssd1306Wri_00018_1_bByte,6
label54
	MOVLW 0x0A
	SUBWF ssd1306Wri_00018_1_x, W
	BTFSS STATUS,C
	GOTO	label56
	MOVLW 0x0A
	SUBWF ssd1306Wri_00018_1_iBandArea, W
	BTFSC STATUS,C
	GOTO	label55
	MOVF gbl_iActiveBand, W
	XORWF ssd1306Wri_00018_1_iCheckBand, W
	BTFSC STATUS,Z
	BSF ssd1306Wri_00018_1_bByte,6
label55
	INCF ssd1306Wri_00018_1_iBandArea, F
	MOVF ssd1306Wri_00018_1_iBandArea, W
	XORLW 0x0C
	BTFSS STATUS,Z
	GOTO	label56
	CLRF ssd1306Wri_00018_1_iBandArea
	INCF ssd1306Wri_00018_1_iCheckBand, F
label56
	MOVF ssd1306Wri_00018_1_bByte, W
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLB 0x00
	INCF ssd1306Wri_00018_1_x, F
	GOTO	label53
label57
	CLRF ssd1306Wri_00018_1_iBandArea
	CLRF ssd1306Wri_00018_1_iCheckBand
	CLRF ssd1306Wri_00018_1_x
label58
	MOVLW 0x80
	SUBWF ssd1306Wri_00018_1_x, W
	BTFSC STATUS,C
	GOTO	label62
	CLRF ssd1306Wri_00018_1_bByte
	MOVLW 0x01
	SUBWF ssd1306Wri_00018_1_x, W
	BTFSS STATUS,C
	GOTO	label59
	MOVF ssd1306Wri_00018_1_x, W
	SUBLW 0x06
	BTFSS STATUS,C
	GOTO	label59
	MOVF ssd1306Wri_00018_1_bVolByte, W
	MOVWF ssd1306Wri_00018_1_bByte
	GOTO	label61
label59
	MOVLW 0x0A
	SUBWF ssd1306Wri_00018_1_x, W
	BTFSS STATUS,C
	GOTO	label61
	MOVF ssd1306Wri_00018_1_iBandArea, W
	SUBLW 0x00
	BTFSC STATUS,C
	GOTO	label60
	MOVLW 0x09
	SUBWF ssd1306Wri_00018_1_iBandArea, W
	BTFSC STATUS,C
	GOTO	label60
	MOVLW	HIGH(ssd1306Wri_00018_1_bBandBytes)

	MOVWF FSR0H
	MOVLW LOW(ssd1306Wri_00018_1_bBandBytes+D'0')
	MOVWF FSR0L
	MOVF ssd1306Wri_00018_1_iCheckBand, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF CompTempVar629
	BCF STATUS,C
	RRF CompTempVar629, W
	MOVWF ssd1306Wri_00018_1_bByte
label60
	MOVLW 0x0A
	SUBWF ssd1306Wri_00018_1_iBandArea, W
	BTFSS STATUS,C
	BSF ssd1306Wri_00018_1_bByte,7
	INCF ssd1306Wri_00018_1_iBandArea, F
	MOVF ssd1306Wri_00018_1_iBandArea, W
	XORLW 0x0C
	BTFSS STATUS,Z
	GOTO	label61
	CLRF ssd1306Wri_00018_1_iBandArea
	INCF ssd1306Wri_00018_1_iCheckBand, F
label61
	MOVF ssd1306Wri_00018_1_bByte, W
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLB 0x00
	INCF ssd1306Wri_00018_1_x, F
	GOTO	label58
label62
	CLRF ssd1306Wri_00018_1_iBandArea
	CLRF ssd1306Wri_00018_1_iCheckBand
	CLRF ssd1306Wri_00018_1_x
label63
	MOVLW 0x80
	SUBWF ssd1306Wri_00018_1_x, W
	BTFSC STATUS,C
	GOTO	label67
	CLRF ssd1306Wri_00018_1_bByte
	MOVLW 0x01
	SUBWF ssd1306Wri_00018_1_x, W
	BTFSS STATUS,C
	GOTO	label64
	MOVF ssd1306Wri_00018_1_x, W
	SUBLW 0x06
	BTFSS STATUS,C
	GOTO	label64
	MOVF ssd1306Wri_00018_1_bVolByte+D'1', W
	MOVWF ssd1306Wri_00018_1_bByte
	GOTO	label66
label64
	MOVLW 0x0A
	SUBWF ssd1306Wri_00018_1_x, W
	BTFSS STATUS,C
	GOTO	label66
	MOVF ssd1306Wri_00018_1_iBandArea, W
	SUBLW 0x00
	BTFSC STATUS,C
	GOTO	label65
	MOVLW 0x09
	SUBWF ssd1306Wri_00018_1_iBandArea, W
	BTFSC STATUS,C
	GOTO	label65
	MOVLW	HIGH(ssd1306Wri_00018_1_bBandBytes)

	MOVWF FSR0H
	MOVLW LOW(ssd1306Wri_00018_1_bBandBytes+D'0')
	MOVWF FSR0L
	MOVLW 0x0A
	ADDWF ssd1306Wri_00018_1_iCheckBand, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF ssd1306Wri_00018_1_bByte
label65
	INCF ssd1306Wri_00018_1_iBandArea, F
	MOVF ssd1306Wri_00018_1_iBandArea, W
	XORLW 0x0C
	BTFSS STATUS,Z
	GOTO	label66
	CLRF ssd1306Wri_00018_1_iBandArea
	INCF ssd1306Wri_00018_1_iCheckBand, F
label66
	MOVF ssd1306Wri_00018_1_bByte, W
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLB 0x00
	INCF ssd1306Wri_00018_1_x, F
	GOTO	label63
label67
	CLRF ssd1306Wri_00018_1_iCharCol
	CLRF ssd1306Wri_00018_1_iDoDisp_00019
	CLRF ssd1306Wri_00018_1_iCharsD_0001A
	CLRF ssd1306Wri_00018_1_cCurrent
	CLRF ssd1306Wri_00018_1_iDoEndD_0001B
	CLRF ssd1306Wri_00018_1_x
label68
	MOVLW 0x80
	SUBWF ssd1306Wri_00018_1_x, W
	BTFSC STATUS,C
	GOTO	label74
	CLRF ssd1306Wri_00018_1_bByte
	MOVLW 0x01
	SUBWF ssd1306Wri_00018_1_x, W
	BTFSS STATUS,C
	GOTO	label69
	MOVF ssd1306Wri_00018_1_x, W
	SUBLW 0x06
	BTFSS STATUS,C
	GOTO	label69
	MOVF ssd1306Wri_00018_1_bVolByte+D'2', W
	MOVWF ssd1306Wri_00018_1_bByte
label69
	MOVLW 0x08
	SUBWF ssd1306Wri_00018_1_x, W
	BTFSC STATUS,C
	GOTO	label70
	BSF ssd1306Wri_00018_1_bByte,7
	GOTO	label73
label70
	MOVF ssd1306Wri_00018_1_x, W
	SUBLW 0x2C
	BTFSC STATUS,C
	GOTO	label73
	MOVLW 0x0A
	SUBWF ssd1306Wri_00018_1_iCharsD_0001A, W
	BTFSC STATUS,C
	GOTO	label73
	MOVF ssd1306Wri_00018_1_iCharCol, F
	BTFSS STATUS,Z
	GOTO	label71
	MOVLW	HIGH(ssd1306Wri_00018_1_cDisplay)

	MOVWF FSR0H
	MOVLW LOW(ssd1306Wri_00018_1_cDisplay+D'0')
	MOVWF FSR0L
	MOVF ssd1306Wri_00018_1_iCharsD_0001A, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF ssd1306Wri_00018_1_cCurrent
label71
	MOVLW 0x05
	SUBWF ssd1306Wri_00018_1_iCharCol, W
	BTFSC STATUS,C
	GOTO	label72
	MOVLW 0x0F
	SUBWF ssd1306Wri_00018_1_cCurrent, W
	BTFSC STATUS,C
	GOTO	label72
	MOVF gbl_dispChar, W
	MOVWF __rom_get_00000_arg_objNumb
	MOVF ssd1306Wri_00018_1_cCurrent, W
	MOVWF __mul_8u_8_00007_arg_a
	MOVLW 0x05
	MOVWF __mul_8u_8_00007_arg_b
	CALL __mul_8u_8_00007
	MOVF CompTempVarRet379, W
	MOVWF __rom_get_00000_arg_idx
	MOVF CompTempVarRet379+D'1', W
	MOVWF CompTempVar637
	MOVF ssd1306Wri_00018_1_iCharCol, W
	ADDWF __rom_get_00000_arg_idx, F
	CALL __rom_get_00000
	MOVWF ssd1306Wri_00018_1_bByte
label72
	INCF ssd1306Wri_00018_1_iCharCol, F
	MOVF ssd1306Wri_00018_1_iCharCol, W
	SUBLW 0x05
	MOVLP 0x00
	BTFSC STATUS,C
	GOTO	label73
	CLRF ssd1306Wri_00018_1_iCharCol
	INCF ssd1306Wri_00018_1_iCharsD_0001A, F
label73
	MOVF ssd1306Wri_00018_1_bByte, W
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLB 0x00
	INCF ssd1306Wri_00018_1_x, F
	GOTO	label68
label74
	CALL i2cStop_00000
	RETURN
; } ssd1306WriteAll function end

	ORG 0x00000468
ssd1306Ini_00017
; { ssd1306Init ; function begin
	CALL ssd1306Sta_00016
	MOVLW 0xAE
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0xD5
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0x80
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0xA8
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CALL i2cStop_00000
	CALL ssd1306Sta_00016
	MOVLW 0x1F
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CALL i2cStop_00000
	CALL ssd1306Sta_00016
	MOVLW 0xD3
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CLRF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0x40
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0x8D
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CALL i2cStop_00000
	CALL ssd1306Sta_00016
	MOVLW 0x14
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CALL i2cStop_00000
	CALL ssd1306Sta_00016
	MOVLW 0x20
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CLRF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0xA1
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0xC8
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CALL i2cStop_00000
	CALL ssd1306Sta_00016
	MOVLW 0xDA
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CALL i2cStop_00000
	CALL ssd1306Sta_00016
	MOVLW 0x02
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CALL i2cStop_00000
	CALL ssd1306Sta_00016
	MOVLW 0x81
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CALL i2cStop_00000
	CALL ssd1306Sta_00016
	MOVLW 0x8F
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CALL i2cStop_00000
	CALL ssd1306Sta_00016
	MOVLW 0xD9
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CALL i2cStop_00000
	CALL ssd1306Sta_00016
	MOVLW 0xF1
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CALL i2cStop_00000
	CALL ssd1306Sta_00016
	MOVLW 0xDB
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0x40
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0xA4
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0xA6
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0x2E
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	MOVLW 0xAF
	MOVWF i2cWrite_00000_arg_data
	CALL i2cWrite_00000
	CALL i2cStop_00000
	RETURN
; } ssd1306Init function end

	ORG 0x000004CD
readData_00000
; { readData ; function begin
	MOVLW 0x0B
	MOVLB 0x00
	MOVWF eepromRead_00000_arg_address
	CALL eepromRead_00000
	MOVF CompTempVarRet574, W
	XORLW 0x0A
	BTFSS STATUS,Z
	RETURN
	CLRF readData_00000_5_i
label75
	MOVLW 0x0A
	SUBWF readData_00000_5_i, W
	BTFSC STATUS,C
	GOTO	label76
	MOVF readData_00000_5_i, W
	MOVWF eepromRead_00000_arg_address
	CALL eepromRead_00000
	MOVLW	HIGH(gbl_iBands)

	MOVWF FSR0H
	MOVLW LOW(gbl_iBands+D'0')
	MOVWF FSR0L
	MOVF readData_00000_5_i, W
	ADDWF FSR0L, F
	MOVF CompTempVarRet574, W
	MOVWF INDF0
	INCF readData_00000_5_i, F
	GOTO	label75
label76
	MOVLW 0x0A
	MOVWF eepromRead_00000_arg_address
	CALL eepromRead_00000
	MOVF CompTempVarRet574, W
	MOVWF gbl_iVolume
	RETURN
; } readData function end

	ORG 0x000004ED
eepromWrit_00015
; { eepromWrite ; function begin
	CLRF eepromWrit_00015_1_didWrite
	MOVF eepromWrit_00015_arg_address, W
	MOVWF eepromRead_00000_arg_address
	CALL eepromRead_00000
	MOVF eepromWrit_00015_arg_data, W
	XORWF CompTempVarRet574, W
	BTFSC STATUS,Z
	GOTO	label78
	MOVF gbl_intcon, W
	MOVWF eepromWrit_00015_4_intconsave
	MOVF eepromWrit_00015_arg_address, W
	MOVLB 0x03
	MOVWF gbl_eeadr
	MOVLB 0x00
	MOVF eepromWrit_00015_arg_data, W
	MOVLB 0x03
	MOVWF gbl_eedata
	BCF gbl_eecon1,7
	BSF gbl_eecon1,2
	CLRF gbl_intcon
	MOVLW 0x55
	MOVWF gbl_eecon2
	MOVLW 0xAA
	MOVWF gbl_eecon2
	BSF gbl_eecon1,1
	MOVLB 0x00
	MOVF eepromWrit_00015_4_intconsave, W
	MOVWF gbl_intcon
	MOVLB 0x03
	BCF gbl_eecon1,2
label77
	MOVLB 0x00
	BTFSS gbl_pir2,4
	GOTO	label77
	BCF gbl_pir2,4
	MOVLW 0x01
	MOVWF eepromWrit_00015_1_didWrite
label78
	MOVF eepromWrit_00015_1_didWrite, W
	MOVWF CompTempVarRet573
	RETURN
; } eepromWrite function end

	ORG 0x00000514
saveData_00000
; { saveData ; function begin
	MOVLB 0x00
	CLRF saveData_00000_1_didWrite
	CLRF saveData_00000_2_i
label79
	MOVLW 0x0A
	SUBWF saveData_00000_2_i, W
	BTFSC STATUS,C
	GOTO	label80
	MOVF saveData_00000_2_i, W
	MOVWF eepromWrit_00015_arg_address
	MOVLW	HIGH(gbl_iBands)

	MOVWF FSR0H
	MOVLW LOW(gbl_iBands+D'0')
	MOVWF FSR0L
	MOVF saveData_00000_2_i, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF eepromWrit_00015_arg_data
	CALL eepromWrit_00015
	MOVF CompTempVarRet573, W
	ADDWF saveData_00000_1_didWrite, F
	INCF saveData_00000_2_i, F
	GOTO	label79
label80
	MOVLW 0x0A
	MOVWF eepromWrit_00015_arg_address
	MOVF gbl_iVolume, W
	MOVWF eepromWrit_00015_arg_data
	CALL eepromWrit_00015
	MOVF CompTempVarRet573, W
	ADDWF saveData_00000_1_didWrite, F
	MOVF saveData_00000_1_didWrite, F
	BTFSC STATUS,Z
	RETURN
	MOVLW 0x0B
	MOVWF eepromWrit_00015_arg_address
	MOVLW 0x0A
	MOVWF eepromWrit_00015_arg_data
	CALL eepromWrit_00015
	RETURN
; } saveData function end

	ORG 0x0000053A
initialise_00000
; { initialise ; function begin
	MOVLW 0x7A
	MOVLB 0x01
	MOVWF gbl_osccon
	MOVLW 0x3C
	MOVWF gbl_trisa
	MOVLB 0x00
	CLRF gbl_porta
	MOVLW 0x03
	MOVLB 0x01
	MOVWF gbl_trisc
	MOVLB 0x00
	MOVWF gbl_portc
	MOVLB 0x03
	CLRF gbl_ansela
	MOVLB 0x04
	CLRF gbl_wpua
	MOVLB 0x03
	CLRF gbl_anselc
	MOVLB 0x04
	CLRF gbl_wpuc
	MOVLB 0x01
	BSF gbl_option_reg,7
	MOVLW 0x28
	MOVLB 0x04
	MOVWF gbl_sspcon
	CLRF gbl_sspcon2
	MOVLW 0x27
	MOVWF gbl_sspadd
	BSF gbl_sspstat,7
	BCF gbl_sspstat,6
	MOVLB 0x00
	BCF gbl_pir2,3
	MOVLW 0x01
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	CALL readData_00000
	CLRF gbl_t1con
	BSF gbl_t1con,5
	BSF gbl_t1con,4
	BSF gbl_t1con,2
	BSF gbl_t1con,0
	MOVLB 0x01
	BSF gbl_pie1,0
	MOVLB 0x00
	BCF gbl_pir1,0
	BSF gbl_intcon,6
	BSF gbl_intcon,7
	CALL tda7317Wri_0001C
	CALL ssd1306Ini_00017
	CALL ssd1306Wri_00018
	MOVLB 0x00
	BSF gbl_portc,2
	RETURN
; } initialise function end

	ORG 0x0000056F
encoderChe_0001E
; { encoderCheck ; function begin
	CLRF encoderChe_0001E_1_returnD_0001F
	MOVLW	HIGH(gbl_12_rencPrevNextCode)

	MOVWF FSR0H
	MOVLW LOW(gbl_12_rencPrevNextCode+D'0')
	MOVWF FSR0L
	MOVF encoderChe_0001E_arg_encoder, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF encoderChe_0001E_1_lPrevNextCode
	MOVLW	HIGH(gbl_12_rencStore)

	MOVWF FSR0H
	MOVLW LOW(gbl_12_rencStore+D'0')
	MOVWF FSR0L
	MOVF encoderChe_0001E_arg_encoder, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF encoderChe_0001E_1_lStore
	MOVF encoderChe_0001E_1_lPrevNextCode, F
	RLF encoderChe_0001E_1_lPrevNextCode, F
	RLF encoderChe_0001E_1_lPrevNextCode, F
	MOVLW 0xFC
	ANDWF encoderChe_0001E_1_lPrevNextCode, F
	MOVF encoderChe_0001E_arg_in, W
	IORWF encoderChe_0001E_1_lPrevNextCode, F
	MOVLW 0x0F
	ANDWF encoderChe_0001E_1_lPrevNextCode, F
	MOVLW	HIGH(gbl_12_rencPrevNextCode)

	MOVWF FSR0H
	MOVLW LOW(gbl_12_rencPrevNextCode+D'0')
	MOVWF FSR0L
	MOVF encoderChe_0001E_arg_encoder, W
	ADDWF FSR0L, F
	MOVF encoderChe_0001E_1_lPrevNextCode, W
	MOVWF INDF0
	MOVF gbl_rencTable, W
	MOVWF __rom_get_00000_arg_objNumb
	MOVF encoderChe_0001E_1_lPrevNextCode, W
	MOVWF __rom_get_00000_arg_idx
	LSLF __rom_get_00000_arg_idx, F
	CALL __rom_get_00000
	ANDLW 0xFF
	MOVLP 0x00
	BTFSC STATUS,Z
	GOTO	label82
	SWAPF encoderChe_0001E_1_lStore, W
	ANDLW 0xF0
	MOVWF encoderChe_0001E_1_lStore
	MOVF encoderChe_0001E_1_lPrevNextCode, W
	IORWF encoderChe_0001E_1_lStore, F
	MOVLW	HIGH(gbl_12_rencStore)

	MOVWF FSR0H
	MOVLW LOW(gbl_12_rencStore+D'0')
	MOVWF FSR0L
	MOVF encoderChe_0001E_arg_encoder, W
	ADDWF FSR0L, F
	MOVF encoderChe_0001E_1_lStore, W
	MOVWF INDF0
	MOVF encoderChe_0001E_1_lStore, W
	XORLW 0x2A
	BTFSS STATUS,Z
	GOTO	label81
	MOVLW 0x04
	MOVWF encoderChe_0001E_1_returnD_0001F
label81
	MOVF encoderChe_0001E_1_lStore, W
	XORLW 0x17
	BTFSS STATUS,Z
	GOTO	label82
	MOVLW 0x03
	MOVWF encoderChe_0001E_1_returnD_0001F
label82
	MOVF encoderChe_0001E_1_returnD_0001F, W
	MOVWF CompTempVarRet658
	RETURN
; } encoderCheck function end

	ORG 0x000005B7
actionRota_00021
; { actionRotaryAdjust ; function begin
	MOVF actionRota_00021_arg_direction, F
	BTFSC STATUS,Z
	RETURN
	DECF gbl_iActiveBand, W
	MOVWF actionRota_00021_2_iAdjustBand
	CLRF actionRota_00021_2_iBand
	MOVF gbl_iActiveBand, F
	BTFSC STATUS,Z
	GOTO	label83
	MOVLW	HIGH(gbl_iBands)

	MOVWF FSR0H
	MOVLW LOW(gbl_iBands+D'0')
	MOVWF FSR0L
	MOVF actionRota_00021_2_iAdjustBand, W
	ADDWF FSR0L, F
	MOVF INDF0, W
	MOVWF actionRota_00021_2_iBand
label83
	MOVF actionRota_00021_arg_direction, W
	XORLW 0x03
	BTFSS STATUS,Z
	GOTO	label88
	MOVF gbl_iActiveBand, F
	BTFSS STATUS,Z
	GOTO	label84
	MOVF gbl_iVolume, W
	SUBLW 0x00
	BTFSS STATUS,C
	DECF gbl_iVolume, F
	GOTO	label87
label84
	MOVLW 0x07
	SUBWF actionRota_00021_2_iBand, W
	BTFSC STATUS,C
	GOTO	label85
	INCF actionRota_00021_2_iBand, F
	GOTO	label86
label85
	MOVF actionRota_00021_2_iBand, W
	SUBLW 0x08
	BTFSS STATUS,C
	DECF actionRota_00021_2_iBand, F
label86
	MOVF actionRota_00021_2_iBand, W
	XORLW 0x08
	BTFSC STATUS,Z
	CLRF actionRota_00021_2_iBand
	MOVLW	HIGH(gbl_iBands)

	MOVWF FSR0H
	MOVLW LOW(gbl_iBands+D'0')
	MOVWF FSR0L
	MOVF actionRota_00021_2_iAdjustBand, W
	ADDWF FSR0L, F
	MOVF actionRota_00021_2_iBand, W
	MOVWF INDF0
label87
	BSF gbl_cTask,2
	RETURN
label88
	MOVF actionRota_00021_arg_direction, W
	XORLW 0x04
	BTFSS STATUS,Z
	RETURN
	MOVF gbl_iActiveBand, F
	BTFSS STATUS,Z
	GOTO	label89
	MOVLW 0x2F
	SUBWF gbl_iVolume, W
	BTFSS STATUS,C
	INCF gbl_iVolume, F
	GOTO	label93
label89
	MOVF actionRota_00021_2_iBand, F
	BTFSS STATUS,Z
	GOTO	label90
	MOVLW 0x09
	MOVWF actionRota_00021_2_iBand
	GOTO	label92
label90
	MOVF actionRota_00021_2_iBand, W
	SUBLW 0x07
	BTFSS STATUS,C
	GOTO	label91
	DECF actionRota_00021_2_iBand, F
	GOTO	label92
label91
	MOVLW 0x0F
	SUBWF actionRota_00021_2_iBand, W
	BTFSS STATUS,C
	INCF actionRota_00021_2_iBand, F
label92
	MOVLW	HIGH(gbl_iBands)

	MOVWF FSR0H
	MOVLW LOW(gbl_iBands+D'0')
	MOVWF FSR0L
	MOVF actionRota_00021_2_iAdjustBand, W
	ADDWF FSR0L, F
	MOVF actionRota_00021_2_iBand, W
	MOVWF INDF0
label93
	BSF gbl_cTask,2
	RETURN
; } actionRotaryAdjust function end

	ORG 0x00000612
actionRota_00020
; { actionRotarySelect ; function begin
	MOVF actionRota_00020_arg_direction, W
	XORLW 0x03
	BTFSS STATUS,Z
	GOTO	label96
	MOVF gbl_iActiveBand, W
	XORLW 0x0A
	BTFSS STATUS,Z
	GOTO	label94
	CLRF gbl_iActiveBand
	GOTO	label95
label94
	INCF gbl_iActiveBand, F
label95
	BSF gbl_cTask,1
	RETURN
label96
	MOVF actionRota_00020_arg_direction, W
	XORLW 0x04
	BTFSS STATUS,Z
	RETURN
	MOVF gbl_iActiveBand, F
	BTFSS STATUS,Z
	GOTO	label97
	MOVLW 0x0A
	MOVWF gbl_iActiveBand
	GOTO	label98
label97
	DECF gbl_iActiveBand, F
label98
	BSF gbl_cTask,1
	RETURN
; } actionRotarySelect function end

	ORG 0x0000062C
main
; { main ; function begin
	CALL initialise_00000
label99
	MOVF gbl_cTask, W
	SUBLW 0x00
	BTFSC STATUS,C
	GOTO	label102
	BTFSS gbl_cTask,1
	GOTO	label100
	CALL tda7317Wri_0001C
	CALL ssd1306Wri_00018
	MOVLB 0x00
	BCF gbl_cTask,1
label100
	BTFSS gbl_cTask,2
	GOTO	label101
	CALL tda7317Wri_0001C
	CALL ssd1306Wri_00018
	MOVLB 0x00
	BCF gbl_cTask,2
label101
	BTFSS gbl_cTask,3
	GOTO	label99
	CALL saveData_00000
	BCF gbl_cTask,3
	GOTO	label99
label102
	MOVLW 0x0C
	ANDWF gbl_porta, W
	MOVWF encoderChe_0001E_arg_in
	RRF encoderChe_0001E_arg_in, F
	RRF encoderChe_0001E_arg_in, F
	MOVLW 0x3F
	ANDWF encoderChe_0001E_arg_in, F
	CLRF encoderChe_0001E_arg_encoder
	CALL encoderChe_0001E
	MOVF CompTempVarRet658, W
	MOVWF actionRota_00020_arg_direction
	CALL actionRota_00020
	MOVLW 0x30
	ANDWF gbl_porta, W
	MOVWF CompTempVar673
	SWAPF CompTempVar673, W
	ANDLW 0x0F
	MOVWF encoderChe_0001E_arg_in
	MOVLW 0x01
	MOVWF encoderChe_0001E_arg_encoder
	CALL encoderChe_0001E
	MOVF CompTempVarRet658, W
	MOVWF actionRota_00021_arg_direction
	CALL actionRota_00021
	GOTO	label99
; } main function end

	ORG 0x0000065B
_startup
	MOVLB 0x00
	CLRF gbl_cTask
	CLRF gbl_iBands
	CLRF gbl_iBands+D'1'
	CLRF gbl_iBands+D'2'
	CLRF gbl_iBands+D'3'
	CLRF gbl_iBands+D'4'
	CLRF gbl_iBands+D'5'
	CLRF gbl_iBands+D'6'
	CLRF gbl_iBands+D'7'
	CLRF gbl_iBands+D'8'
	CLRF gbl_iBands+D'9'
	CLRF gbl_iActiveBand
	MOVLW 0x2F
	MOVWF gbl_iVolume
	CLRF gbl_iTimer1Count
	MOVLW 0x00
	MOVWF gbl_rencTable
	CLRF gbl_12_rencPrevNextCode
	CLRF gbl_12_rencPrevNextCode+D'1'
	CLRF gbl_12_rencStore
	CLRF gbl_12_rencStore+D'1'
	MOVLW 0x01
	MOVWF gbl_dispChar
	MOVLW 0x02
	MOVWF gbl_dispHeader
	MOVLP 0x00
	GOTO	main
	ORG 0x00000677
interrupt
; { interrupt ; function begin
	MOVLB 0x00
	BTFSS gbl_pir1,0
	RETFIE
	MOVLB 0x01
	BTFSS gbl_pie1,0
	RETFIE
	MOVLW 0xE7
	MOVLB 0x00
	SUBWF gbl_iTimer1Count, W
	BTFSS STATUS,C
	GOTO	label104
	CLRF gbl_iTimer1Count
	BSF gbl_cTask,3
label104
	INCF gbl_iTimer1Count, F
	BCF gbl_pir1,0
	RETFIE
; } interrupt function end

	ORG 0x00008007
	DW 0xF984
	DW 0xDAFF
	END
