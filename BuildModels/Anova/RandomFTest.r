#Test to determine there is no difference between groups 

instal.packages(mosaic) 
package(mosaic)

anovaOutput <- aov(data$variable~data$variable2) 
anova(anovaOutput) 
#From the output, take the F observed value 

#Create a function that runs the F-value 10k times 
getF = function(aovmodel) 
{summary(aovmodel)[[1]]$"F value"[1]}

#save the orginal F observed value
Fobserved = #

#run the function 10k times 
manyFs = do(10000) * getF(aov(shuffle(variable~variable2, data = data))

#save the results of the function 
names(manyFs) = "F"

#How many F values are greater than the orginal observed F Value 
prop(manyFs$F >= Fobserved) 
#output will be a p-value, if lower than 0.05 there is a significant difference in the outputs of group with 95% confidence level 

#Graph the outcome 
hist(manyFs$F, breaks=50, freq = FALSE, xlab ="X Title", ylab = "Y Title ")
abline( v = Fobserved, lty = 1) 
