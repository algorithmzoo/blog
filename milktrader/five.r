G <- GSPC
G$ret <- dailyReturn(Cl(GSPC), type="log")


years <- seq(1950, 2011)

Out <- apply(expand.grid(years), 1, function(x){

  firstfive <- exp(sum(first(G$ret[as.character(x)], n=5))) -1

  return(c(x[1],firstfive))  
  
})

five <- as.data.frame(t(Out))


  

