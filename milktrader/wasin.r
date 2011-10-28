
wasin <- function(sym="^GSPC"){
	
	require("quantmod")
	
	x          <- getSymbols(sym, from="1900-01-01",  auto.assign=FALSE)                   
	x          <- na.omit(x)
	x$ret      <- dailyReturn(x, type="log")                           
	x$RET      <- dailyReturn(x)
	
# extras
	
        x$RET.W    <- weeklyReturn(x)
	x$RET.M    <- monthlyReturn(x)
	x$MON      <- weekdays(time(x)) == "Monday"
	x$WED      <- weekdays(time(x)) == "Wednesday"
	x$FRI      <- weekdays(time(x)) == "Friday"
	r.50       <- SMA(Cl(x), n=50) 
	r.200      <- SMA(Cl(x) , n=200)
	x$bull     <- ifelse(r.50 > r.200, 1, 0)
	x$gap      <- Op(x) - lag(Cl(x))
	
	   
  ago.1    <- lag(x$ret, k=1)           
	ago.2    <- lag(x$ret, k=2)           
	ago.3    <- lag(x$ret, k=3)           
	ago.4    <- lag(x$ret, k=4)   
	ago.5    <- lag(x$ret, k=5)   
	ago.6    <- lag(x$ret, k=6)   
	ago.7    <- lag(x$ret, k=7)   
	ago.8    <- lag(x$ret, k=8)   
	ago.9    <- lag(x$ret, k=9)   
	ago.10   <- lag(x$ret, k=10)   
	ago.11   <- lag(x$ret, k=11)   
	ago.12   <- lag(x$ret, k=12)   
	ago.13   <- lag(x$ret, k=13)   
	ago.14   <- lag(x$ret, k=14)   
	ago.15   <- lag(x$ret, k=15)   
	ago.16   <- lag(x$ret, k=16)   
	ago.17   <- lag(x$ret, k=17)   
	ago.18   <- lag(x$ret, k=18)   
	ago.19   <- lag(x$ret, k=19)   
	ago.20   <- lag(x$ret, k=20)   
	ago.21   <- lag(x$ret, k=21)   
	ago.22   <- lag(x$ret, k=22)   
	ago.23   <- lag(x$ret, k=23)   
	ago.24   <- lag(x$ret, k=24)   
	ago.25   <- lag(x$ret, k=25)   
	ago.26   <- lag(x$ret, k=26)   
	ago.27   <- lag(x$ret, k=27)   
	ago.28   <- lag(x$ret, k=28)   
	ago.29   <- lag(x$ret, k=29)   
	ago.30   <- lag(x$ret, k=30)
	
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
	
	
	
	      x$WAS.1     <-     exp(ago.1)-1 
        x$WAS.2     <-     exp(ago.1 + ago.2)-1
        x$WAS.3     <-     exp(ago.1 + ago.2 + ago.3)-1
        x$WAS.4     <-     exp(ago.1 + ago.2 + ago.3 + ago.4)-1                 
        x$WAS.5     <-     exp(ago.1 + ago.2 + ago.3 + ago.4 + ago.5)-1                 
        x$WAS.6     <-     exp(ago.1 + ago.2 + ago.3 + ago.4 + ago.5 + ago.6)-1                 
        x$WAS.7     <-     exp(ago.1 + ago.2 + ago.3 + ago.4 + ago.5 + ago.6 + ago.7)-1                 
        x$WAS.8     <-     exp(ago.1 + ago.2 + ago.3 + ago.4 + ago.5 + ago.6 + ago.7 + ago.8)-1                 
        x$WAS.9     <-     exp(ago.1 + ago.2 + ago.3 + ago.4 + ago.5 + ago.6 + ago.7 + ago.8 + ago.9)-1                
        x$WAS.10    <-     exp(ago.1 + ago.2 + ago.3 + ago.4 + ago.5 + ago.6 + ago.7 + ago.8 + ago.9 + ago.10)-1                 
        x$WAS.15    <-     exp(ago.1 + ago.2 + ago.3 + ago.4 + ago.5 + ago.6 + ago.7 + ago.8 + ago.9 + ago.10 + ago.11 + ago.12 + ago.13 + ago.14 + ago.15)-1                 
        x$WAS.30    <-     exp(ago.1 + ago.2 + ago.3 + ago.4 + ago.5 + ago.6 + ago.7 + ago.8 + ago.9 + ago.10 +                
                               ago.11 + ago.12 + ago.13 + ago.14 + ago.15 + ago.16 + ago.17 + ago.18 + ago.19 + ago.20 +               
                               ago.21 + ago.22 + ago.23 + ago.24 + ago.25 + ago.26 + ago.27 + ago.28 + ago.29 + ago.30)-1                 
 
  
	      x$IN.2     <-     exp(x$ret + next.1)-1
        x$IN.3     <-     exp(x$ret + next.1 + next.2)-1
        x$IN.4     <-     exp(x$ret + next.1 + next.2 + next.3)-1
        x$IN.5     <-     exp(x$ret + next.1 + next.2 + next.3 + next.4)-1                 
        x$IN.6     <-     exp(x$ret + next.1 + next.2 + next.3 + next.4 + next.5)-1                 
        x$IN.7     <-     exp(x$ret + next.1 + next.2 + next.3 + next.4 + next.5 + next.6)-1                 
        x$IN.8     <-     exp(x$ret + next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7)-1                 
        x$IN.9     <-     exp(x$ret + next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7 + next.8)-1                 
        x$IN.10    <-     exp(x$ret + next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7 + next.8 + next.9)-1                
        x$IN.15    <-     exp(x$ret + next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7 + next.8 + next.9 + next.10 + next.11 + next.12 + next.13 + next.14)-1                
        x$IN.30    <-     exp(x$ret + next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7 + next.8 + next.9 + next.10 +                
                                    next.11 + next.12 + next.13 + next.14 + next.15 + next.16 + next.17 + next.18 + next.19 + next.20 +               
                                    next.21 + next.22 + next.23 + next.24 + next.25 + next.26 + next.27 + next.28 + next.29  )-1                 

        assign("fat.data", x, envir=.GlobalEnv)
}
 
 
