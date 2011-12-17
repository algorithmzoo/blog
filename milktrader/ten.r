years <- seq(1950, 2010)

Out <- apply(expand.grid(years), 1, function(x){

  last_ten <- exp(sum(dailyReturn(last(GSPC$GSPC.Close[as.character(x)], n=11) , type="log"))) -1

  return(c(x[1],last_ten))  
  
})

santa <- as.data.frame(t(Out))


  

