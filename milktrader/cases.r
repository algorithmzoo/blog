GSPC$start <- cases(
      
     GSPC$GSPC.Open > GSPC$R3 -> 1, 
     GSPC$GSPC.Open > GSPC$R2 & GSPC$GSPC.Open <= GSPC$R3 -> 2, 
     GSPC$GSPC.Open > GSPC$R1 & GSPC$GSPC.Open <= GSPC$R2 -> 3, 
     GSPC$GSPC.Open > GSPC$PP & GSPC$GSPC.Open <= GSPC$R1 -> 4, 
     GSPC$GSPC.Open > GSPC$S1 & GSPC$GSPC.Open <= GSPC$PP -> 5, 
     GSPC$GSPC.Open > GSPC$S2 & GSPC$GSPC.Open <= GSPC$S1 -> 6, 
     GSPC$GSPC.Open > GSPC$S3 & GSPC$GSPC.Open <= GSPC$S2 -> 7,
     GSPC$GSPC.Open < GSPC$S3 -> 8 
      
      
      )

GSPC$finish<- cases(
      
     GSPC$GSPC.Close > GSPC$R3 -> 1, 
     GSPC$GSPC.Close > GSPC$R2 & GSPC$GSPC.Close <= GSPC$R3 -> 2, 
     GSPC$GSPC.Close > GSPC$R1 & GSPC$GSPC.Close <= GSPC$R2 -> 3, 
     GSPC$GSPC.Close > GSPC$PP & GSPC$GSPC.Close <= GSPC$R1 -> 4, 
     GSPC$GSPC.Close > GSPC$S1 & GSPC$GSPC.Close <= GSPC$PP -> 5, 
     GSPC$GSPC.Close > GSPC$S2 & GSPC$GSPC.Close <= GSPC$S1 -> 6, 
     GSPC$GSPC.Close > GSPC$S3 & GSPC$GSPC.Close <= GSPC$S2 -> 7,
     GSPC$GSPC.Close < GSPC$S3 -> 8 
      
      
      )
