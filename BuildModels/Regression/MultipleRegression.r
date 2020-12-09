#Create the best model by minimizing the sum of the squared residuals 
#Predict Y using X and X2 

#Create Multiple Regression Model 
object <- lm(data$variabley~data$variablex + data$variablex2) 

#view the results 
summary(object) 
#if the F-test P-value is almost 0 then one of the variables is helpful 
#r^2 and adjusted r^2, the higher the value (closer to 1) the better the model

#plot the results 
plot(object) 

#create indivdual plots of y vs xs 
plot(data$variabley~data$variablex)
plot(data$variabley~data$variablex2)
