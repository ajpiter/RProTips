#Use: 
#Conditions: Independent Groups & Observations, and Random Sampling 
#Alternative: Two Sample T-test is a better alternative test 
#Normal distribution is not required 

wilcox.test(data$variable~data$variable) 
#output will show p-value
#if value is lower than 0.05 than there is evidence of a difference in the population mean groups at a 95% confidence level 
