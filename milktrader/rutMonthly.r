getSymbols('^RUT', from='1900-01-01')
R = monthlyReturn(Cl(RUT))
rut = R[.indexmon(R) == 11]
png('decRUT.png')
zeroplot(rut, xlab='from 1987 to present', up.col='khaki', dn.col='khaki4', main="RUT")
dev.off()
