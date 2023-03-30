#*****************************************************************************************************************
# Copyright Daniel Clarke https://electro-dan.co.uk, 27th September 2022
# Free to use and adapt but NO guarantees or support
#*****************************************************************************************************************/

import pandas as pd
import numpy as np
from decimal import *

qLower = 0.6
qUpper = 0.7
gainLower = 11.4
gainUpper = 12.6
freqLower = 60
freqUpper = 65
# Example frequency ranges for 10 band
# 240, 260
# 950, 1050
# 3850, 4150
# 60, 65
# 7900, 8100
# 120, 130
# 480, 520
# 1950, 2050
# 30, 32

e6 = [10, 15, 22, 33, 47, 68]
e24 = [10, 11, 12, 13, 15, 16, 18, 20, 22, 24, 27, 30, 33, 36, 39, 43, 47, 51, 56, 62, 68, 75, 82, 91]

# Create capacitor dataframe with e6 values from 1e-11 (100pF) to 6.8e-7 (680nF)
e6list = []
for m in range(11, 7, -1):
    for v in e6:
        dict1 = {"c1":Decimal(v) / Decimal(10**m), "c1nF":Decimal(v) / Decimal(10**m) * 1000000000}
        e6list.append(dict1)
dfC1 = pd.DataFrame(e6list, columns=['c1','c1nF'])
dfC2 = dfC1.copy() 
dfC2 = dfC2.rename(columns={'c1':'c2', 'c1nF':'c2nF'})

# Create resistor dataframes with e24 values from 1000 (1k) to 51000 (51k) and 2000 (2k) to 9100 (9.1k)
e24list = []
for v in e24:
    dict1 = {"r1":Decimal(v) * Decimal(100), "r1k":Decimal(v) / Decimal(10)}
    e24list.append(dict1)
for v in e24:
    if (v <= 51):
        dict1 = {"r1":Decimal(v) * Decimal(1000), "r1k":Decimal(v)}
        e24list.append(dict1)
dfR1 = pd.DataFrame(e24list, columns=['r1','r1k'])
e24list2 = []
for v in e24:
    if (v >= 20):
        dict1 = {"r2":Decimal(v) * Decimal(100), "r2k":Decimal(v) / Decimal(10)}
        e24list2.append(dict1)
dfR2 = pd.DataFrame(e24list2, columns=['r2','r2k'])

#print(dfC1)
#print(dfC2)
#print(dfR1)
#print(dfR2)

# Cross join all sets
dfP = dfC1.merge(dfC2, how="cross").merge(dfR1, how="cross").merge(dfR2, how="cross")
print(str(len(dfP.index)) + " results to explore")

# Calculate centre frequency
dfP["freq"] = 1 / (Decimal(2) * Decimal(np.pi) * np.sqrt(dfP["r1"] * dfP["r2"] * dfP["c1"] * dfP["c2"]))
# Reduce to target frequency range
dfP = dfP[dfP['freq'].between(freqLower, freqUpper)]
#dfP = dfP[((dfP['freq'] >= 15200) & (dfP['freq'] <= 16800)) | ((dfP['freq'] >= 240) & (dfP['freq'] <= 260))]
print(str(len(dfP.index)) + " results with matching frequency range")
print(dfP[['c1nF', 'c2nF', 'r1k', 'r2k', 'freq']])

# Calculate Q
# Reduce to target Q range
dfP["q"] = np.sqrt(dfP["r1"] * dfP["c1"] * dfP["r2"] * dfP["c2"]) / ((dfP["r2"] * dfP["c1"]) + (dfP["r2"] * dfP["c2"]))
dfP = dfP[dfP['q'].between(qLower, qUpper)]
print(str(len(dfP.index)) + " results with matching frequency and Q range")
print(dfP[['c1nF', 'c2nF', 'r1k', 'r2k', 'freq', 'q']])

# Calculate Gain
dfP["gain"] = 20 * np.log10(((dfP["r2"] * dfP["c2"]) + (dfP["r2"] * dfP["c1"]) + (dfP["r1"] * dfP["c1"])) / ((dfP["r2"] * dfP["c1"]) + (dfP["r2"] * dfP["c2"])))
# Reduce to target gain range
dfP = dfP[dfP['gain'].between(gainLower, gainUpper)]
print(str(len(dfP.index)) + " results with matching frequency, Q and Gain range")
print(dfP[['c1nF', 'c2nF', 'r1k', 'r2k', 'freq', 'gain', 'q']])
