


#Name: Boxplot Bedrooms v Total Value 
#From the WestRoxbury Dataset 
#A boxplot better represents the range of home values by bedroom, but dose not illustrate much 
boxplot(WestRoxbury.df$TOTAL.VALUE ~ WestRoxbury.df$BEDROOMS, xlab = "Bedrooms", ylab = "Total Value")

-----

#Name: Boxplot subset via Quartile Range
#Dataset: Westroxbury Homes 

#To create better visualization  
#Manipulate the Dataset to study high-end home values 
#select all homes in the 4th interquartile range for home value 
HomeValue4Q <- WestRoxbury.df$TOTAL.VALUE > 438
HomeValue4Q
#create a new column 
WestRoxbury.df$HomeValue4Q <- c(HomeValue4Q)
View(WestRoxbury.df)

#check for NAs on Total Value and Tax before graph 
is.na(HomeValue4Q)
is.na(WestRoxbury.df$TAX)

#subset the data based on homes with values in the 4th quartile range
WestRoxburyHighEnd.df <- subset(WestRoxbury.df, WestRoxbury.df$HomeValue4Q ==TRUE,
                  select=c(TOTAL.VALUE, TAX, LOT.SQFT, YR.BUILT,
                           GROSS.AREA, LIVING.AREA, FLOORS, ROOMS, 
                           BEDROOMS, FULL.BATH, HALF.BATH, KITCHEN, 
                           FIREPLACE, REMODEL, HomeValue4Q))
View(WestRoxburyHighEnd.df)

boxplot(WestRoxburyHighEnd.df$TOTAL.VALUE ~ WestRoxburyHighEnd.df$BEDROOMS, main = "High End Home Value Compared to Bedrooms",
xlab = "Bedrooms", ylab = "Total Value")

![image](https://user-images.githubusercontent.com/28680575/102856123-e9967e00-43f3-11eb-9263-87a431ad4863.png)

-----

#Example from Data Analysis with R 3.2
#BoxPlot of the Median Value or "MEDV" 

> #boxplot
> boxplot(BostonHousing.df$MEDV ~ BostonHousing.df$CHAS, xlab = "CHAS", ylab = "MEDV")
> 
> #boxplot with ggplot
> ggplot(BostonHousing.df) +geom_boxplot(aes(x = as.factor(CHAS), y = MEDV)) + xlab("CHAS")
