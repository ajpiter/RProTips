#Privides the range we are #% confident a predicted value

#Create Regression Model 
model <- lm(data$variabley~data$variablex + data$variablex2) 

#Find the confidence interval for both slope and y-intercept 
#0.95 is standard confidence interval, but could use 0.99 for 99% confidence etc. 
confint(regressionobject, level = 0.95) 
