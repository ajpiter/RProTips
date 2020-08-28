#Example from Data Analysis with R 3.1

> BostonHousing.df <- read.csv("BostonHousing.csv")
> plot(BostonHousing.df$MEDV - BostonHousing.df$LSTAT, xlab = "MDEV", ylab = "LSTAT")
> 
> #Second Scatter Plot 
> library(ggplot2)
> ggplot(BostonHousing.df) +geom_point(aes(x = LSTAT, y=MEDV), colour = "navy", alpha = 0.7) 
