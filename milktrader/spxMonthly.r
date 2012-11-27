getSymbols('^GSPC', from='1900-01-01')
G = monthlyReturn(Cl(GSPC))
g = G[.indexmon(G) == 11]
png('decSPX.png')
zeroplot(g, xlab='from 1950 to present')
dev.off()
