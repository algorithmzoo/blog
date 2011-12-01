unittest <- function(got, want) {
  ifelse(got == want,
         prefix <- "PASS", 
         prefix <- "FAIL")
  sprintf("%s: got: %s, expected: %s",  prefix, got, want)
}


##### manually input the want variables 

 want1 <- -0.00099738
 want2 <-  0.01958675
 want3 <- -0.02039735

##### programmatically derive values from the data mine

 got1  <- round(H$six['1966'], digits=8)
 got2  <- round(H$six['1990'], digits=8)
 got3  <- round(H$six['1996'], digits=8)

##### call the unittest function three times

# unittest(got1, want1)
# unittest(got2, want2)
# unittest(got3, want3)
