require(quantmod)
require(myfun)

getSymbols('SPY', from='1900-01-01')
SPY$next.day = lag(dailyReturn(Cl(SPY)), k=-1)
spy          = apply.quarterly(SPY, last)

PNGzooplot(spy$next.day, lastprice=135, title='July 3, 2012')
