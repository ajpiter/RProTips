#Example from Data Analysis with R 3.2
#BoxPlot of the Median Value or "MEDV" 

> #boxplot
> boxplot(BostonHousing.df$MEDV ~ BostonHousing.df$CHAS, xlab = "CHAS", ylab = "MEDV")
> 
> #boxplot with ggplot
> ggplot(BostonHousing.df) +geom_boxplot(aes(x = as.factor(CHAS), y = MEDV)) + xlab("CHAS")
