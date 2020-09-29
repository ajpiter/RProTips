#Still working on this one

#The original file was from Zillow https://www.zillow.com/research/data/

#To save the dataset as an object, I used the following code:
HomeInventoryMetro.df <- read.csv("Zillow Housing Inventory by Metro.csv", header = TRUE) 
View(HomeInventoryMetro.df)

HomeInventoryMetro2.df <- HomeInventoryMetro.df #backup Table 
head(HomeValuesMetro.df)

HomeInventoryMetro.df <- HomeInventoryMetro2.df

#Remove Unessary Rows, and Columns [Row, Column]
HomeInventoryMetro.df<- HomeInventoryMetro.df[-1,] #row
HomeInventoryMetro.df<- HomeInventoryMetro.df[,-1:-2]#columns
HomeInventoryMetro.df<- HomeInventoryMetro.df[,-2] #columns

#Rename Columns 
library(dplyr)
HomeInventoryMetro.df <- rename(HomeInventoryMetro.df, MetroArea = RegionName)

#Hoover's Cleanup MetroArea Example 
#1.Add a table with the State Abbreviations 
stateabr <- read.csv("https://raw.githubusercontent.com/jasonong/List-of-US-States/master/states.csv")
stateabr <- as.array(stateabr$Abbreviation)
#2. Remove any state abbrevations from the column 
for(i in stateabr){
  HomeInventoryMetro.df$MetroArea = as.character(gsub(i, "", HomeInventoryMetro.df$MetroArea))
}
#3. Get rid of " -" at the end of MetroArea 
HomeInventoryMetro.df$MetroArea = as.character(gsub(" -", "", HomeInventoryMetro.df$MetroArea))

state.abb # base R state abbrevations package

#Get rid of "," at the end of MetroArea 
HomeInventoryMetro.df$MetroArea = as.character(gsub(",", "", HomeInventoryMetro.df$MetroArea))

#Clean up Multiple City Names in a Single Metro Area 
HomeInventoryMetro.df$MetroArea = as.character(gsub("-Long Beach-Anaheim", "", HomeInventoryMetro.df$MetroArea))
HomeInventoryMetro.df$MetroArea = as.character(gsub("Fort Lauderdale", "", HomeInventoryMetro.df$MetroArea))
HomeInventoryMetro.df$MetroArea = as.character(gsub("Fort Lauderdale", "", HomeInventoryMetro.df$MetroArea))
HomeInventoryMetro.df$MetroArea = as.character(gsub("Fort Lauderdale", "", HomeInventoryMetro.df$MetroArea))
HomeInventoryMetro.df$MetroArea = as.character(gsub("Fort Lauderdale", "", HomeInventoryMetro.df$MetroArea))
HomeInventoryMetro.df$MetroArea = as.character(gsub("Fort Lauderdale", "", HomeInventoryMetro.df$MetroArea))
HomeInventoryMetro.df$MetroArea = as.character(gsub("Fort Lauderdale", "", HomeInventoryMetro.df$MetroArea))
HomeInventoryMetro.df$MetroArea = as.character(gsub("Fort Lauderdale", "", HomeInventoryMetro.df$MetroArea))

