#A linear regression model predicts Y based on X 
library(tidyverse) 
library(ggplot2) 

#Confirm both X and Y are quantative variables 
summary(dataname)

#Create a Scatterplot to Explore Data 
ggplot(data=dataname) + geom_point(mapping = aes(x= variablenamex, y = variablenamey) 
#The scatterplot output will show if there is a positive or negative correlation between the variables 

#Calculate the correlation between X and Y  
cor(dataname$variablex, dataname$variabley) 
#if entire dataset is quantative, you can get correlations for the entire table using cor(dataname, use = "all.obs", method = "pearson") 
#Positive result, as X increases Y increases 
#Negative result, as X increases Y decreases
#correlations are strong when closer to 1 or -1. They are weaker as you approach 0 

#Calculate the covariance between X and Y 
cov(dataname$variablex, dataname$variabley)
#or cov(dataname) if all variables in the dataset are numeric 

#create a linear model 
object <- lm(dataname$variabley~dataname$variablex) 
#or object <- lm(variabley~variablex, data=dataname) #another option 
#or object <- dataname %>% lm(variabley~variablex, data=.) #use piping
summary(object) 

#create residual object 
residualobject <- resid(object) 

#plot the residual to check for assumptions 
plot(residualobject~variablex, xlab= "Name X Label", ylab= "Residual") 
#Linearity, assumption met if there is not a pattern 
#Constant Variance, assumption met if there is not a funnel shape 

#Check the mean of residuals 
mean(residualobject) 
#ideally the mean would be very close to 0 

#Create a qqplot to check for normalitiy and outliers
qqnorm(residualobject, pch=16, frame=FALSE) #pch is shape
qqline(residualobject, color="blue", lwd=2) #lwd is thickness of line
#could also create a histogram #hist(residualobject) 

#A good model will predict y better than taking the average of all y values 

#provides the hypothsis test for the slope
summary(object)
#If p-value is close to 0 then there is strong evidence to support that x is a significant predictor of y 

#Calculate the confidence interval for both the slope and y-intercept 
confint(object, level=0.95) 
#the numbers at the bottom of the output, represent the confidence range for x


