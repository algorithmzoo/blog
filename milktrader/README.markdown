Data from the Dow Jones Industrial Average goes back to the early 1900s. 
Full moon data was scraped from NASA's web page http://eclipse.gsfc.nasa.gov/phase/phasecat.html.
Is there anything interesting to be gleaned from observing returns near a full moon?

Some notes on indexing out merged datasets.
	* merged the data sets with all=T
	* truncated the head of the set to first occurrence of full moon
	* truncated the tail of the set to last trading day
	* there are days when there was a full moon, but the market wasn't open
		* in this case, full == 1 would have too many dates so na.omit() applied
	* there are days when the market is open but the moon is not full
		* in this case, is.na(full) is sufficient
	* this leads to the full data set not equal in length to the full == 1 on trading days and full == NA on trading days

