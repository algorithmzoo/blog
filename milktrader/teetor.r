require(quantmod)
require(tseries)

getSymbols("GLD;GDX", from=1900-01-01)

model <- lm(Ad(GLD) ~ Ad(GDX) + 0)

# hedge ratio derived from linear regression

slope <- model$coef

spread <- Ad(GLD) - slope*Ad(GDX)

test <- adf.test(spread)

print(test$p.value)
