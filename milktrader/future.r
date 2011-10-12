future <- function(sym="^GSPC"){
	
	require("quantmod")
	
	x          <- getSymbols(sym, from="1900-01-01",  auto.assign=FALSE)                   
	x          <- na.omit(x)
	x$ret      <- dailyReturn(Cl(x), type="log")                           
	x$RET      <- dailyReturn(Cl(x))
	 
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
	#x$ago.6    <- lag(x$ret, k=6)   
	#x$ago.7    <- lag(x$ret, k=7)   
	#x$ago.8    <- lag(x$ret, k=8)   
	#x$ago.9    <- lag(x$ret, k=9)   
	#x$ago.10    <- lag(x$ret, k=10)   
	#x$ago.11    <- lag(x$ret, k=11)   
	#x$ago.12    <- lag(x$ret, k=12)   
	#x$ago.13    <- lag(x$ret, k=13)   
	#x$ago.14    <- lag(x$ret, k=14)   
	
  #      note that next.5 is the 1-day return after the start of a 4-day event
  #      next.8 is what happens after four-days later after 4-days of something else happens
  #      so if a four-day rally starts, then next.8 is the return on the fourth day after the end of the rally
  
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
	next.30   <- lag(x$ret, k=-30)      
	
	
	
  #    get returns tomorrow, 2-days and 3-days into the future
  
	x$in.1     <-     exp(next.1)-1
        x$in.2     <-     exp(next.1 + next.2)-1
        x$in.3     <-     exp(next.1 + next.2 + next.3)-1
        x$in.4     <-     exp(next.1 + next.2 + next.3 + next.4)-1                 
        x$in.5     <-     exp(next.1 + next.2 + next.3 + next.4 + next.5)-1                 
        x$in.6     <-     exp(next.1 + next.2 + next.3 + next.4 + next.5 + next.6)-1                 
        x$in.7     <-     exp(next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7)-1                 
        x$in.8     <-     exp(next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7 + next.8)-1                 
        x$in.9     <-     exp(next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7 + next.8 + next.9)-1                
        x$in.10    <-     exp(next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7 + next.8 + next.9 + next.10)-1                 
        x$in.30    <-     exp(next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7 + next.8 + next.9 + next.10 +                
                        next.11 + next.12 + next.13 + next.14 + next.15 + next.16 + next.17 + next.8 + next.19 + next.20 +               
                        next.21 + next.22 + next.23 + next.24 + next.25 + next.26 + next.27 + next.28 + next.29 + next.30)-1                 

        food       <- paste("sym","future.returns",   sep=".")    
        assign(food, x, envir=.GlobalEnv)
}
 
 
