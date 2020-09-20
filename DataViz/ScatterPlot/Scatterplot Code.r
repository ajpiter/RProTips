
#Name: Scatterplot Correlated Numerics 
#Scatterplot of Total Value versus Tax Amount 
plot(WestRoxbury.df$TOTAL.VALUE ~ WestRoxbury.df$TAX, xlab= "Total Value", ylab = "Tax")

-----
#Name: Scatterplot Catagory + Continuous 
plot(WestRoxbury.df$BEDROOMS ~ WestRoxbury.df$TAX, xlab= "Total Value", ylab = "Bedrooms")
#Homes with an equal number of Bedrooms have a wider range in total value 

----- 

#Example from Data Analysis with R 3.1
> #Second Scatter Plot 
> library(ggplot2)
> ggplot(BostonHousing.df) +geom_point(aes(x = LSTAT, y=MEDV), colour = "navy", alpha = 0.7) 
