----- #Example of Race By Population in Florida ----- 
library(tidycensus)
library(tidyverse) 
library(stringr)
library(dplyr)

Race <- c(race_vars <- c(White = "B03002_003", 
                         Black = "B03002_004", 
                         Native = "B03002_005", 
                         Asian = "B03002_006", 
                         HIPI = "B03002_007", 
                         Hispanic = "B03002_012"))

FLPopByRace <- map_df(2009:2019, function(x) {get_acs(geography = "county",
                       state = "FL",                   
                       variables = Race,                    
                       summary_var = "B03002_001", 
                       year = x) %>%
    mutate(year = x)})

# Name Column is formated as "Orange County, Florida 
CountyIndex <- str_split_fixed(FLPopByRace$NAME, ",", 2) #Create County Index Matrix
FLPopByRace <- cbind(FLPopByRace, CountyIndex) #Add CountyIndex Matrix to CountyIncome DataFrame
names(FLPopByRace)[names(FLPopByRace) == "1"] <- "County" 
names(FLPopByRace)[names(FLPopByRace) == "2"] <- "State" 
FLPopByRace$County <- as.character(gsub(" County", "", FLPopByRace$County)) #remove word county
FLPopByRace$State <- as.character(gsub(" ", "", FLPopByRace$State)) #remove word county

# variable Column list the Race as filtered above
names(FLPopByRace)[names(FLPopByRace) == "variable"] <- "Race" #update column name 

# estimate Column indicates the count of people identifying as Race in the County 
names(FLPopByRace)[names(FLPopByRace) == "estimate"] <- "PopulationByRace"

#moe Column represents the margin of error for the Race count in the County 
names(FLPopByRace)[names(FLPopByRace) == "moe"] <- "MarginErrorRace"

#summary_est Column indicates the total population count for the County 
names(FLPopByRace)[names(FLPopByRace) == "summary_est"] <- "PopulationTotal"

#Remove Columns 
FLPopByRace <- FLPopByRace %>% select(-GEOID, -NAME, -summary_moe) #remove columns

#Reorder Columns 
colnames(FLPopByRace)
ColOrder <- c("State", "County", "Race", "PopulationByRace", "MarginErrorRace", "PopulationTotal")
FLPopByRace <- FLPopByRace[, ColOrder]

#Create Variable, Percent of County Population By Race 
FLPopByRace <- 
  FLPopByRace %>%  mutate(RacePercent = 100 * (PopulationByRace / PopulationTotal))
