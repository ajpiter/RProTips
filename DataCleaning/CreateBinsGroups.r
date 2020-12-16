# .bincode() and cut() are similar functions that allow you to take numeric data and create categories 

#Example: Create Age Groups based on Birth Year 
library(data.table)
agebreaks <- c(1920, 1950, 1960, 1970, 1980, 1990, 1998, 2002, 2020) # create vector of what years to start and stop the bins 
agelabels <- c("Under 18","18-22","22-30","31-40","40-50","50-60","60-70","70+") #Label vector should have one less value than your breaks 
setDT(DR121520)[ , agegroups := cut(DATE_OF_BIRTH_YEAR, 
                                breaks = agebreaks, 
                                right = TRUE, 
                                labels = agelabels)]


-----

#Create bins of size 1 for RM
housing.df$RM.bin<-.bincode(housing.df$RM, c(1:9))

# .bincode(): Bin a numeric vector and return integer codes for the binning
# e.g., RM.bin=4 if 4<RM<=5; RM.bin=5 if 5<RM<=6;

#Compute the average of MEDV by (binned) RM and CHAS
aggregate(  list(MeanMEDV=housing.df$MEDV), by=list(RM=housing.df$RM.bin,CHAS=housing.df$CHAS), FUN=mean  )
# useaggregate()andlist() to tabulate counts 
# in aggregate(), use the argument by=to define the list of aggregating variables        
# and FUN=to define an aggregating function
