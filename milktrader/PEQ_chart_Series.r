 PEQ_chart_Series <- function(x) { 
   
   nam  = deparse(substitute(x)) 
   x$eq = NA
   
   for( i in 1:nrow(x)){
       
       x$eq[i,] =  apply(x[,1][1:i], 2, Return.cumulative)}

   chart_Series(x$eq + 1, name=nam)

 }
   
