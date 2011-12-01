Since Black Friday begins the shopping season, it looks interesting to
observe the total return from Black Friday to one week later. This will be
a total of 6 days worth of returns. First Black Friday and then the 5-day week afterwards.

For practical purposes, it seems easiest to sum the log returns of Black Friday along
with the next day, next day, and so on. The return will be that sum, called holidaysum, 
exponentiated. Or:

  * exp(holidaysum) -1 

The idea is to explore if there is something about initial holiday cheer manifested
in market returns. 

The plan will be to take GSPC from yahoo, and attach a log return vector to it called
GSPC$ret. If we index on Black Friday, the sum will be in the manner of:

  * GSPC$ret + 
  * lag(GSPC$ret, k=-1) +
  * and so on until k=-5 (which is 5 days in the future of Black Friday)

To index out Black Friday, we'll use the quantmod::.index method from within R.
The general template for that code will be:

  * .indexmon == 10 (zero-based POSIX goodness (frown face))
  * .indexmday > 22 (earliest Thanksgiving is 22) -- note not zero-based here
  * .indexmday < 30 (latest Thanksgiving is 28, ergo latest Black Friday is 29)
  * .indexwday == 5 (Friday is the 5th day)

Then we just run through the boilerplate of creating a density plot of the 6-days
worth of returns that start on Black Friday. Since the first return in this study
is Black Friday, we look at the positive/negative return line as being the close on
the day before Thanksgiving. For this plot, that number is 1188. 

Also in this study, it's time to start testing. Adopting the test first code second
concept that has become popular in recent years, we'll derive some answers that
we have high confidence in and then test the results of our code against that answer.

Any errors after this test passes will be a result of the data rather than the actual 
code. Here is the format for subsetting our data to concentrate on 3 values:

  * test1 <- Cl(G) ['1966-11-21::1966-12-06']
  * test2 <- Cl(G) ['1990-11-21::1990-12-06']
  * test3 <- Cl(G) ['1996-11-21::1996-12-06']

In 1990, Thanksgiving happened on 11/22 (earliest). In 1996 it happened on 
11/28 (latest). In 1966 it happened on 11/23 (not earliest or latest). Based on 
these dates, the following dates' closes will be used to calculate our desired answer:

  * 1966: 11/23 to 12/2
  * 1990: 11/21 to 11/30
  * 1996: 11/27 to 12/6

The answer for 1966: (80.13-80.21)/80.21      => -0.00099738
The answer for 1990: (322.22-316.03)/316.03   =>  0.01958675
The answer for 1996: (739.60-755)/755         => -0.02039735

Now we pass those values into a function that checks the value from our derived object against
these values. Et viola. 

The name of the test function is unittest.r

