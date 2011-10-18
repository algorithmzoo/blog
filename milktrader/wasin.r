
wasin <- function(sym="^GSPC"){
	
	require("quantmod")
	
	x          <- getSymbols(sym, from="1900-01-01",  auto.assign=FALSE)                   
	x          <- na.omit(x)
	x$ret      <- dailyReturn(x, type="log")                           
	x$RET      <- dailyReturn(x)
	
# extras
	
	x$MON      <- weekdays(time(x)) == "Monday"
	x$WED      <- weekdays(time(x)) == "Wednesday"
	x$FRI      <- weekdays(time(x)) == "Friday"
	r.50       <- SMA(Cl(x), n=50) 
	r.200      <- SMA(Cl(x) , n=200)
	x$bull     <- ifelse(r.50 > r.200, 1, 0)
	
	x$ago.1    <- lag(x$ret, k=1)           
	x$ago.2    <- lag(x$ret, k=2)           
	x$ago.3    <- lag(x$ret, k=3)           
	x$ago.4    <- lag(x$ret, k=4)   
	x$ago.5    <- lag(x$ret, k=5)   
	x$ago.6    <- lag(x$ret, k=6)   
	x$ago.7    <- lag(x$ret, k=7)   
	x$ago.8    <- lag(x$ret, k=8)   
	x$ago.9    <- lag(x$ret, k=9)   
	x$ago.10   <- lag(x$ret, k=10)   
	x$ago.11   <- lag(x$ret, k=11)   
	x$ago.12   <- lag(x$ret, k=12)   
	x$ago.13   <- lag(x$ret, k=13)   
	x$ago.14   <- lag(x$ret, k=14)   
	x$ago.15   <- lag(x$ret, k=14)   
	x$ago.16   <- lag(x$ret, k=14)   
	x$ago.17   <- lag(x$ret, k=14)   
	x$ago.18   <- lag(x$ret, k=14)   
	x$ago.19   <- lag(x$ret, k=14)   
	x$ago.20   <- lag(x$ret, k=14)   
	x$ago.21   <- lag(x$ret, k=14)   
	x$ago.22   <- lag(x$ret, k=14)   
	x$ago.23   <- lag(x$ret, k=14)   
	x$ago.24   <- lag(x$ret, k=14)   
	x$ago.25   <- lag(x$ret, k=14)   
	x$ago.26   <- lag(x$ret, k=14)   
	x$ago.27   <- lag(x$ret, k=14)   
	x$ago.28   <- lag(x$ret, k=14)   
	x$ago.29   <- lag(x$ret, k=14)   
	x$ago.30   <- lag(x$ret, k=14)   
  
	next.1    <- lag(x$ret, k=-1)           
	next.2    <- lag(x$ret, k=-2)           
	next.3    <- lag(x$ret, k=-3)           
	next.4    <- lag(x$ret, k=-4)     
	next.5    <- lag(x$ret, k=-5)     
	next.6    <- lag(x$ret, k=-6)     
	next.7    <- lag(x$ret, k=-7)     
	next.8    <- lag(x$ret, k=-8)     
	next.9    <- lag(x$ret, k=-9)     
	next.10   <- lag(x$ret, k=-10)      
	next.11   <- lag(x$ret, k=-11)      
	next.12   <- lag(x$ret, k=-12)      
	next.13   <- lag(x$ret, k=-13)      
	next.14   <- lag(x$ret, k=-14)      
	next.15   <- lag(x$ret, k=-15)      
	next.16   <- lag(x$ret, k=-16)      
	next.17   <- lag(x$ret, k=-17)      
	next.18   <- lag(x$ret, k=-18)      
	next.19   <- lag(x$ret, k=-19)      
	next.20   <- lag(x$ret, k=-20)      
	next.21   <- lag(x$ret, k=-21)      
	next.22   <- lag(x$ret, k=-22)      
	next.23   <- lag(x$ret, k=-23)      
	next.24   <- lag(x$ret, k=-24)      
	next.25   <- lag(x$ret, k=-25)      
	next.26   <- lag(x$ret, k=-26)      
	next.27   <- lag(x$ret, k=-27)      
	next.28   <- lag(x$ret, k=-28)      
	next.29   <- lag(x$ret, k=-29)      
	# next.30   <- not used  
	
	
	
	x$was.1     <-     exp(x$ago.1)-1
        x$was.2     <-     exp(x$ago.1 + x$ago.2)-1
        x$was.3     <-     exp(x$ago.1 + x$ago.2 + x$ago.3)-1
        x$was.4     <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4)-1                 
        x$was.5     <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4 + x$ago.5)-1                 
        x$was.6     <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4 + x$ago.5 + x$ago.6)-1                 
        x$was.7     <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4 + x$ago.5 + x$ago.6 + x$ago.7)-1                 
        x$was.8     <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4 + x$ago.5 + x$ago.6 + x$ago.7 + x$ago.8)-1                 
        x$was.9     <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4 + x$ago.5 + x$ago.6 + x$ago.7 + x$ago.8 + x$ago.9)-1                
        x$was.10    <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4 + x$ago.5 + x$ago.6 + x$ago.7 + x$ago.8 + x$ago.9 + x$ago.10)-1                 
        x$was.30    <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4 + x$ago.5 + x$ago.6 + x$ago.7 + x$ago.8 + x$ago.9 + x$ago.10 +                
                               x$ago.11 + x$ago.12 + x$ago.13 + x$ago.14 + x$ago.15 + x$ago.16 + x$ago.17 + x$ago.8 + x$ago.19 + x$ago.20 +               
                               x$ago.21 + x$ago.22 + x$ago.23 + x$ago.24 + x$ago.25 + x$ago.26 + x$ago.27 + x$ago.28 + x$ago.29 + x$ago.30)-1                 
 
  
	x$in.2     <-     exp(x$ret + next.1)-1
        x$in.3     <-     exp(x$ret + next.1 + next.2)-1
        x$in.4     <-     exp(x$ret + next.1 + next.2 + next.3)-1
        x$in.5     <-     exp(x$ret + next.1 + next.2 + next.3 + next.4)-1                 
        x$in.6     <-     exp(x$ret + next.1 + next.2 + next.3 + next.4 + next.5)-1                 
        x$in.7     <-     exp(x$ret + next.1 + next.2 + next.3 + next.4 + next.5 + next.6)-1                 
        x$in.8     <-     exp(x$ret + next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7)-1                 
        x$in.9     <-     exp(x$ret + next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7 + next.8)-1                 
        x$in.10    <-     exp(x$ret + next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7 + next.8 + next.9)-1                
        x$in.30    <-     exp(x$ret + next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7 + next.8 + next.9 + next.10 +                
                                    next.11 + next.12 + next.13 + next.14 + next.15 + next.16 + next.17 + next.8 + next.19 + next.20 +               
                                    next.21 + next.22 + next.23 + next.24 + next.25 + next.26 + next.27 + next.28 + next.29  )-1                 

        assign("fat.data", x, envir=.GlobalEnv)
}
 
 
