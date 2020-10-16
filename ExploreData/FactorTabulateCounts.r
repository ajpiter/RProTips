
# Contingency table of the counts at each combination of factor levels# Using table()

housing.df<-read.csv("BostonHousing.csv")
table(housing.df$CHAS)

#35 neighborhoods have a CHAS value of “1,” i.e. they border the Charles River
