# Example from Data Analysis in R... Figure 3.1

> Amtrak.df <- read.csv("Amtrak.csv")
> library(forecast)
> timeseries.Amtrak <- ts(Amtrak.df$Ridership, start = c(1991, 1), end = c(2004, 3), freq = 12)
> plot(timeseries.Amtrak, xlab = "Year", ylab = "Ridership (in 000s)", ylim = c(1300, 2300))
