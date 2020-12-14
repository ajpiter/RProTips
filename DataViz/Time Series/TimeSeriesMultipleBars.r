#Example from QMB 6930 

#Below is an example of creating 60 binary bar charts side by side. 
#In this case the chart was used to show a binary variable whether a loan defaulted across 60 months 

#import data 
mortgageIBM <- mortgage

# libraries
library(ggplot2)
library(plyr)
library(dplyr)

# Illustrate the no defaults / defaults during each time period
ggplot(mortgageIBM, aes(default_time))+
  geom_bar(stat="count") +
  facet_wrap("time")
  
#Generic Example 
library(ggplot2)
library(plyr)
library(dplyr)

ggplot(data, aes(variableXBinary)) + 
             geom_bar(stat= "variableY") +
             facet_wrap("variableXTime")
