Last post I forgot to update the README. The code and process are pretty 
straight-forward though. Except that generating the dataframe was a bit of
a brain-teaser.

The first 5 trading days of the year have been often rumored as having
predictive value for the rest of the year. This seems quite absurd, but let's
have a look-see just the same.

As it turns out, this little myth is true over 70 of the time. And if you put that
into a fair-coin test (dbinom(44,62,0.5) you get an absurdly unlikely number.

Well, that's kinda boring information, really. So I've plotted it with an extra
dimension. How often is it correct, and then when it is correct (or incorrect), 
how correct is it (or horribly incorrect as the case may be)?

So there is a little data.frame to xts and some plotting wizardry involved here, 
and hopefully enough evidence to suggest that this dear statistic never gets 
seriously traded. 

This commit will be mostly correct, but I have to wait for the close at 
the end of the year to put in the correct 'text' in the plot.

