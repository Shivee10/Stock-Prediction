install.packages("quantmod")
install.packages("forecast")
library(forecast)
library(quantmod)
getSymbols("FB",src="yahoo",from="2018-01-01")
plot(FB)
fit<-auto.arima(FB$FB.Close, ic= "bic")
fit
plot(as.ts(FB$FB.Close))
lines(fitted(fit),col="red")
fit.forecast <- forecast(fit)
fit.forecast
plot(fit.forecast)
