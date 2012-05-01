worth <- function(x,y) {
  occur <- c(x,y)
  value <- chisq.test(occur)

  if(value$p.value < .05)
    return('go for it')
  if(value$p.value > .05)
    return('nope')
}

