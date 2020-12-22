##### One Way Anova #####
#Predicting Y Vairable based on State 

library("tidyverse")

#input data
DataFile <- read.csv("DataFile.csv", header = TRUE)

#Create Groups by filtering a variable
Florida <-filter(DataFile, state =="Florida") 
PuertoRico <- filter(DataFile, state == "Puerto Rico") 
WashingtonDC <- filter(DataFile, state == "WashingtonDC") 

DataComparison <- filter(DataFile, state == "Florida" | state == "Puerto Rico" | state == "WashingtonDC")  
DataComparison$Variable <- as.numeric(DataComparison$Variable) #converts from character to numeric 

#Create a boxplot to visualize the difference between groups 
boxplot(DataComparison$Variable ~ DataComparison$State, ylab ="Variable", xlab = "State of Residence" 

#Summaries 
summary(DataComparison$Variable) #statistics for all 3 groups 
summary(Florida$Variable) #stats for FL 
summary(PuertoRico$Variable) #stats for PR 
summary(WashingtonDC$Variable) #stats for DC 

AnovaModel <-aov(DataComparison$Variable ~ DataComparison$State) 
anova(AnovaModel)

## Output is an Analysis of Variance Table
#F Value or Test statistic: 3.0153 
#P-value .04943
Conclusion: With a p-value under .05, we have evidence that at least one of the population mean variables is different from the others. 
#With a 95% confidence rate 

 
