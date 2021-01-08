----- #Examples of how to querry Census Data in R using Tidycensus package ----

# Load the tidycensus package into your R session
library(tidycensus)
library(tidyverse) 

----- # Define your Census API key and set it with census_api_key() ----- 
api_key <- "#####"
census_api_key(api_key, install = TRUE)
readRenviron("~/.Renviron")
Sys.getenv("CENSUS_API_KEY") # Check your API key

#Decennial Census is the 10 year census 
#Access data from the 1990, 2000, or 2010 Census with 2010 as default
get_decennial(geography = X, variables = Y)
#output is GeoId, Name, Variable, Value
#Where Value is the population count within the geography for variable specified 

#American Community Survey (ACS) is a survey sample taken yearly 
get_acs(geography = X, variables = Y)) #default dataset is 5-year, 2012-2016 ACS sample
#output is GeoId, Name, Variable,Estimate and MOE
#Where Estimate is the Population Estimate and MOE is Margin of Error since it is sample data 

----- #Create Table With Available Variables in R Tidycensus Package ----- 
#Variables are also listed on https://censusreporter.org/topics/table-codes/

#Load variables from the 2012-2016 ACS, where 2016 is the year the data set ends 
#acs5 is a 5 year summary of ACS surveys and TRUE means the data is saved on computer 
Acs2016 <- load_variables(year = 2016,
                       dataset = "acs5",
                       cache = TRUE)


#Set year and dataset to get variables from the 2000 Census SF3
Census2000 <- load_variables(year = 2000,
                             dataset = "sf3",
                             cache = TRUE)

#Set year and dataset to get variables from the 2010 Census SF3
Census2010 <- load_variables(year = 2010,
                             dataset = "sf3",
                             cache = TRUE)

#Use TidyVerse to explore all variables that mention "income" 
library(tidyverse) # Load the tidyverse
filter(v16p, str_detect(name, "B19001")) # Filter for table B19001
# Use 'income' to search for variables menting income 
filter(v16p, str_detect(label, fixed("income", 
                                     ignore_case = TRUE)))

----- #Obtain and view state populations from the 2010 US Census ----- 
StatePop <- get_decennial(geography = "state", variables = "P001001")
head(StatePop)

#Clean StatePop Table 
StatePop <- StatePop %>% select(-GEOID, -variable) #remove columns
names(StatePop)[names(StatePop) == "NAME"] <- "State" #update column name 
names(StatePop)[names(StatePop) == "value"] <- "Population" #update column name 

----- #Obtain and view state median household income from the 2012-2016 American Community Survey
CountyIncome <- get_acs(geography = "county", variables = "B19013_001")
head(county_income)

#Clean CountyIncome Table  
library(stringr)
library(dplyr)
CountyIndex <- str_split_fixed(CountyIncome$NAME, ",", 2) #Create County Index Matrix
CountyIncome <- cbind(CountyIncome, CountyIndex) #Add CountyIndex Matrix to CountyIncome DataFrame
names(CountyIncome)[names(CountyIncome) == "1"] <- "County" 
names(CountyIncome)[names(CountyIncome) == "2"] <- "State" 
CountyIncome$County <- as.character(gsub(" County", "", CountyIncome$County)) #remove word county
CountyIncome$State <- as.character(gsub(" ", "", CountyIncome$State)) #remove word county
CountyIncome <- CountyIncome %>% select(-GEOID, -NAME, -variable) #remove columns
names(CountyIncome)[names(CountyIncome) == "estimate"] <- "Income, Median" #update column name 
names(CountyIncome)[names(CountyIncome) == "moe"] <- "Income, Margin of Error"

----- #Two Methods to Subset for Florida Income Data ----- 
#First, directly from Census API 
FloridaIncomeAPI <- get_acs(geography = "county", variables = c(hhincome = "B19013_001"), state = "FL")

#Second, subsetting larger table
FloridaIncome <- subset(CountyIncome, CountyIncome$State == "Florida")

----- #Requesting more than one value ----- 
FLIncomeAge <- get_acs(geography = "county", 
          variables = c(Income = "B19013_001", Age = "B01002_001"), #Renames variables 
          state = "FL", #subset to Florida counties 
          output = "wide") #includes both variables, and individual margin of error
