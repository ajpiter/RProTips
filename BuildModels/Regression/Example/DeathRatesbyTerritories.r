library(tidyverse)

getwd()
setwd("/Users/amanda/Documents/UF Saved on MBP/Previous Classes/Fall 2020")
DeathRates <- read.csv("Stats World Bank Countries .csv", header = TRUE) 

#Create a plot of Death Rate per Capita vs Time 
#Territories denoted as a different color or symbol.
qplot(data = DeathRates, x = Yr, y = DeathRatePer1000, color = Country, 
      xlab ="Year", ylab ="Death Rate Per 1,000 People", 
      main = "Death Rate Over Time: in The U.S. and U.S. Territories")

## Creates an indicator variable based on the country code. 
#xUSA when the country is United States, and zero otherwise. 
xUSA <-ifelse(Countries$CountryCode == "USA", 1, 0)

## Creates an indicator variable based on the country code. 
#x_VIR when the country is Nigeria, and zero otherwise. 
xVIR <-ifelse(Countries$CountryCode == "VIR", 1, 0)

##Creates a multiple regression equation below to predict Death Rate 
#based on year and two country indicator variables. 
Multiple <- lm(Countries$DeathRatePer1000 ~ Countries$YrCode + xUSA + xVIR) 

#Conduct the Overall F test. 
summary(Multiple)
#p-value 1.206e-09

#Significant Variables to predict the response variable include: 
#Years 2014 to 2018
#The US Virgin Islands 
