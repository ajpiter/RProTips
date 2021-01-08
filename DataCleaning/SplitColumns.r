#Example, where NAME column was formated as "Orange County, Florida"
#Converted to two columns, where County = "Orange" and State = "Florida" 

library(stringr)
library(dplyr)
CountyIndex <- str_split_fixed(CountyIncome$NAME, ",", 2) #Create County Index Matrix
CountyIncome <- cbind(CountyIncome, CountyIndex) #Add CountyIndex Matrix to CountyIncome DataFrame
names(CountyIncome)[names(CountyIncome) == "1"] <- "County" 
names(CountyIncome)[names(CountyIncome) == "2"] <- "State" 
CountyIncome$County <- as.character(gsub(" County", "", CountyIncome$County)) #remove word county
CountyIncome <- CountyIncome %>% select(-GEOID, -NAME, -variable) #remove columns
names(CountyIncome)[names(CountyIncome) == "estimate"] <- "Income, Median" #update column name 
names(CountyIncome)[names(CountyIncome) == "moe"] <- "Income, Margin of Error"
