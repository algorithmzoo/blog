getSymbols('^NDX', from='1900-01-01')
N = monthlyReturn(Cl(NDX))
ndx = N[.indexmon(N) == 11]
png('decNDX.png')
zeroplot(ndx, xlab='from 1985 to present', up.col='yellow', dn.col='yellow4', main="NDX")
dev.off()

