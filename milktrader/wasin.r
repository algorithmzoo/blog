
wasin <- function(sym="^GSPC"){
	
	require("quantmod")
	
	x          <- getSymbols(sym, from="1900-01-01",  auto.assign=FALSE)                   
	x          <- na.omit(x)
	x$ret      <- dailyReturn(x, type="log")                           
	x$RET      <- dailyReturn(x)
	
# extras
	
        x$RET.W    <- weeklyReturn(x)
	#x$RET.M    <- monthlyReturn(x)
	x$MON      <- weekdays(time(x)) == "Monday"
	x$WED      <- weekdays(time(x)) == "Wednesday"
	x$FRI      <- weekdays(time(x)) == "Friday"
	r.50       <- SMA(Cl(x), n=50) 
	r.200      <- SMA(Cl(x) , n=200)
	x$bull     <- ifelse(r.50 > r.200, 1, 0)
	x$gap      <- Op(x) - lag(Cl(x))
	
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
	x$ago.15   <- lag(x$ret, k=15)   
	x$ago.16   <- lag(x$ret, k=16)   
	x$ago.17   <- lag(x$ret, k=17)   
	x$ago.18   <- lag(x$ret, k=18)   
	x$ago.19   <- lag(x$ret, k=19)   
	x$ago.20   <- lag(x$ret, k=20)   
	x$ago.21   <- lag(x$ret, k=21)   
	x$ago.22   <- lag(x$ret, k=22)   
	x$ago.23   <- lag(x$ret, k=23)   
	x$ago.24   <- lag(x$ret, k=24)   
	x$ago.25   <- lag(x$ret, k=25)   
	x$ago.26   <- lag(x$ret, k=26)   
	x$ago.27   <- lag(x$ret, k=27)   
	x$ago.28   <- lag(x$ret, k=28)   
	x$ago.29   <- lag(x$ret, k=29)   
	x$ago.30   <- lag(x$ret, k=30)
	   
        x$AGO.1    <- lag(x$RET, k=1)           
	x$AGO.2    <- lag(x$RET, k=2)           
	x$AGO.3    <- lag(x$RET, k=3)           
	x$AGO.4    <- lag(x$RET, k=4)   
	x$AGO.5    <- lag(x$RET, k=5)   
	x$AGO.6    <- lag(x$RET, k=6)   
	x$AGO.7    <- lag(x$RET, k=7)   
	x$AGO.8    <- lag(x$RET, k=8)   
	x$AGO.9    <- lag(x$RET, k=9)   
	x$AGO.10   <- lag(x$RET, k=10)   
	x$AGO.11   <- lag(x$RET, k=11)   
	x$AGO.12   <- lag(x$RET, k=12)   
	x$AGO.13   <- lag(x$RET, k=13)   
	x$AGO.14   <- lag(x$RET, k=14)   
	x$AGO.15   <- lag(x$RET, k=15)   
	x$AGO.16   <- lag(x$RET, k=16)   
	x$AGO.17   <- lag(x$RET, k=17)   
	x$AGO.18   <- lag(x$RET, k=18)   
	x$AGO.19   <- lag(x$RET, k=19)   
	x$AGO.20   <- lag(x$RET, k=20)   
	x$AGO.21   <- lag(x$RET, k=21)   
	x$AGO.22   <- lag(x$RET, k=22)   
	x$AGO.23   <- lag(x$RET, k=23)   
	x$AGO.24   <- lag(x$RET, k=24)   
	x$AGO.25   <- lag(x$RET, k=25)   
	x$AGO.26   <- lag(x$RET, k=26)   
	x$AGO.27   <- lag(x$RET, k=27)   
	x$AGO.28   <- lag(x$RET, k=28)   
	x$AGO.29   <- lag(x$RET, k=29)   
	x$AGO.30   <- lag(x$RET, k=30)
	
	x$next.1    <- lag(x$ret, k=-1)           
	next.2    <- lag(x$ret, k=-2)           
	next.3    <- lag(x$ret, k=-3)           
	next.4    <- lag(x$ret, k=-4)     
	next.5    <- lag(x$ret, k=-5)     
	next.6    <- lag(x$ret, k=-6)     
	next.7    <- lag(x$ret, k=-7)     
	next.8    <- lag(x$ret, k=-8)     
	next.9    <- lag(x$ret, k=-9)     
	x$next.10   <- lag(x$ret, k=-10)      
	x$next.11   <- lag(x$ret, k=-11)      
	x$next.12   <- lag(x$ret, k=-12)      
	x$next.13   <- lag(x$ret, k=-13)      
	x$next.14   <- lag(x$ret, k=-14)      
	x$next.15   <- lag(x$ret, k=-15)      
	x$next.16   <- lag(x$ret, k=-16)      
	x$next.17   <- lag(x$ret, k=-17)      
	x$next.18   <- lag(x$ret, k=-18)      
	x$next.19   <- lag(x$ret, k=-19)      
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
	
	
	
	x$WAS.1     <-     exp(x$ago.1)-1 # or x$AGO.1
        x$WAS.2     <-     exp(x$ago.1 + x$ago.2)-1
        x$WAS.3     <-     exp(x$ago.1 + x$ago.2 + x$ago.3)-1
        x$WAS.4     <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4)-1                 
        x$WAS.5     <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4 + x$ago.5)-1                 
        x$WAS.6     <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4 + x$ago.5 + x$ago.6)-1                 
        x$WAS.7     <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4 + x$ago.5 + x$ago.6 + x$ago.7)-1                 
        x$WAS.8     <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4 + x$ago.5 + x$ago.6 + x$ago.7 + x$ago.8)-1                 
        x$WAS.9     <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4 + x$ago.5 + x$ago.6 + x$ago.7 + x$ago.8 + x$ago.9)-1                
        x$WAS.10    <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4 + x$ago.5 + x$ago.6 + x$ago.7 + x$ago.8 + x$ago.9 + x$ago.10)-1                 
        x$WAS.30    <-     exp(x$ago.1 + x$ago.2 + x$ago.3 + x$ago.4 + x$ago.5 + x$ago.6 + x$ago.7 + x$ago.8 + x$ago.9 + x$ago.10 +                
                               x$ago.11 + x$ago.12 + x$ago.13 + x$ago.14 + x$ago.15 + x$ago.16 + x$ago.17 + x$ago.18 + x$ago.19 + x$ago.20 +               
                               x$ago.21 + x$ago.22 + x$ago.23 + x$ago.24 + x$ago.25 + x$ago.26 + x$ago.27 + x$ago.28 + x$ago.29 + x$ago.30)-1                 
 
  
	x$IN.2     <-     exp(x$ret + x$next.1)-1
        x$IN.3     <-     exp(x$ret + x$next.1 + next.2)-1
        x$IN.4     <-     exp(x$ret + x$next.1 + next.2 + next.3)-1
        x$IN.5     <-     exp(x$ret + x$next.1 + next.2 + next.3 + next.4)-1                 
        x$IN.6     <-     exp(x$ret + x$next.1 + next.2 + next.3 + next.4 + next.5)-1                 
        x$IN.7     <-     exp(x$ret + x$next.1 + next.2 + next.3 + next.4 + next.5 + next.6)-1                 
        x$IN.8     <-     exp(x$ret + x$next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7)-1                 
        x$IN.9     <-     exp(x$ret + x$next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7 + next.8)-1                 
        x$IN.10    <-     exp(x$ret + x$next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7 + next.8 + next.9)-1                
        x$IN.30    <-     exp(x$ret + x$next.1 + next.2 + next.3 + next.4 + next.5 + next.6 + next.7 + next.8 + next.9 + x$next.10 +                
                                    x$next.11 + x$next.12 + x$next.13 + x$next.14 + x$next.15 + x$next.16 + x$next.17 + x$next.18 + x$next.19 + next.20 +               
                                    next.21 + next.22 + next.23 + next.24 + next.25 + next.26 + next.27 + next.28 + next.29  )-1                 

        assign("fat.data", x, envir=.GlobalEnv)
}
 
 
