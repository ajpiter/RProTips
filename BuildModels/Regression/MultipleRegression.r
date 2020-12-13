#Create the best model by minimizing the sum of the squared residuals 
#Predict Y using X and X2 

#import files 
data 
dataPredict

#Create Multiple Regression Model 
model <- lm(data$variabley~data$variablex + data$variablex2 + data$variablex3) 

#view the results 
summary(model) 
#if the F-test P-value is almost 0 then one of the variables is helpful 
#r^2 and adjusted r^2, the higher the value (closer to 1) the better the model

#Use Regression Equation to Predict, the numbers in this example are random. You should use the output from the equation above
dataPredict$Prediction <- with(dataPredict, -4412000 +
                                       (7211* dataPredict$variablex1) - 
                                       (393.3* dataPredict$variablex2) +
                                       (62.61* dataPredict$variablex3))

#plot the results 
plot(object) 

#create indivdual plots of y vs xs 
plot(data$variabley~data$variablex)
plot(data$variabley~data$variablex2)
