MTD = function() {

  stocks = c('BAC', 'C')

  for(i in 1:length(stocks)) {

    sym = getSymbols(stocks[i], auto.assign=FALSE)
    mtd = last(monthlyReturn(Cl(sym)))

    ticker = as.character(substitute(sym))
    cat(ticker, as.numeric(mtd))

  } 
}
