#!/usr/bin/python

import re
import urllib
import csv

site  = "http://finance.yahoo.com/d/quotes.csv?"
sequal= "s="
sym   =  "ATVI+ADBE+AKAM+ALXN+ALTR+AMZN+AMGN+APOL+AAPL+AMAT+ADSK+ADP+AVGO+BIDU+BBBY+BIIB+BMC+BRCM+CHRW+CA+CELG+CERN+CHKP+CSCO+CTXS+CTSH+CMCSA+COST+DELL+XRAY+DTV+DLTR+EBAY+ERTS+EXPE+EXPD+ESRX+FFIV+FAST+FISV+FLEX+FOSL+GRMN+GILD+GOOG+GMCR+HSIC+INFY+INTC+INTU+ISRG+KLAC+KFT+LRCX+LINTA+LIFE+LLTC+MRVL+MAT+MXIM+MCHP+MU+MSFT+MNST+MYL+NTAP+NFLX+NUAN+NVDA+NWSA+ORLY+ORCL+PCAR+PAYX+PCLN+PRGO+QCOM+RIMM+ROST+SNDK+STX+SHLD+SIAL+SIRI+SPLS+SBUX+SRCL+SYMC+TXN+VRSN+VRTX+VIAB+VMED+VOD+WCRX+WFM+WYNN+XLNX+YHOO"
tequal= "&f="
tags  = "l1m3" # last and 50dma 
h     = urllib.urlopen(site + sequal + sym + tequal + tags)
j     = h.read()
h.close()

k     = re.findall('(\d+.\d\d),(\d+.\d\d)',j) # a list of tuples
RET   = [((float(a)/float(b))-1) for a,b in k]

def main():
  with open('foo', 'wb') as f:
    for item in RET:
      f.write("%f \n" % item)

if __name__ == '__main__':
    main()
