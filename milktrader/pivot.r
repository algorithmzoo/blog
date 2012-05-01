pvtcalc  <- function(x){
  
  H <- last(Hi(x))
  L <- last(Lo(x))
  C <- last(Cl(x))

  P <- (H  + L + C) / 3

  s1    <- (2 * P) - H
  r1    <- (2 * P) - L
  s2    <- P - H + L
  r2    <- P + H - L
  s3    <- L - 2*(H - P)
  r3    <- H + 2*(P -L)


  food  <- paste("P","points",   sep=".")    
  assign(food, x$P, envir=.GlobalEnv)
}

