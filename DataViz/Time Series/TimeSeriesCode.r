# Example from Data Analysis in R... Figure 3.1

> Amtrak.df <- read.csv("Amtrak.csv")
> library(forecast)
> timeseries.Amtrak <- ts(Amtrak.df$Ridership, start = c(1991, 1), end = c(2004, 3), freq = 12)
> plot(timeseries.Amtrak, xlab = "Year", ylab = "Ridership (in 000s)", ylim = c(1300, 2300))


----- 
Name: ggplot Time Series not filtered

ggplot(WestRoxbury.df, aes(YrBuilt, HomeValue)) +
  geom_line() +
  geom_smooth(formula = y ~ poly(x, 2), method = "lm", colour = "navy", se = FALSE, na.rm = TRUE)

-----
Name: ggplot Time Series filtered 

summary(WestRoxbury.df)
WestRoxburyYears.df <- filter(WestRoxbury.df, YrBuilt > 1920) ggplot(WestRoxburyYears.df, aes(YrBuilt, HomeValue)) +
geom_line() +
geom_smooth(formula = y ~ poly(x, 2), method = "lm", colour = "navy", se = FALSE, na.rm
= TRUE)

-----

Name: ggplot Time Series Color by Character Variable 

 WestRoxburyBackupYears.df <- filter(WestRoxburyBackup, YR.BUILT > 1920) ggplot(WestRoxburyBackupYears.df, aes(YR.BUILT, TOTAL.VALUE, color = REMODEL)) +
geom_line()

-----
Name: ggplot Time Series Side by Side facet_wrap()

WestRoxburyBackupYears.df <- filter(WestRoxburyBackup, YR.BUILT > 1920) ggplot(WestRoxburyBackupYears.df, aes(YR.BUILT, TOTAL.VALUE, color = REMODEL)) +
geom_line() +
facet_wrap(facets = vars(REMODEL))

----- 
Name: ggplot Time Series Side by Side factor, Color continuous 

WestRoxburyBackupYears.df <- filter(WestRoxburyBackup, YR.BUILT > 1920) ggplot(WestRoxburyBackupYears.df, aes(YR.BUILT, TOTAL.VALUE, color = TOTAL.VALUE)) +
geom_line() +
facet_wrap(facets = vars(REMODEL))
