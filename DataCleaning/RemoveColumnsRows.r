----- #Removing Rows & Columns by Index -----
#Remove Unessary Rows, and Columns [Row, Column]
HomeInventoryMetro.df<- HomeInventoryMetro.df[-1,] #row
HomeInventoryMetro.df<- HomeInventoryMetro.df[,-1:-2]#columns
HomeInventoryMetro.df<- HomeInventoryMetro.df[,-2] #columns

----- #Removing Rows in Base R by Value ----- 
#Remove rows where the values in specified columns equal specified values 
DataFrame <- DataFrame[!(DataFrame$Column1 =="B" & DataFrame$Column2==0),]

----- #Removing Columns using TidyVerse ----- 
library(tidyverse)

#Removing Columns by Name, removes the two specified columns 
my_data %>% select(-Column1, -Column50)

#Removing all columns between two column names
my_data %>% select(-(Column1:Column50))

#Removing all columns whose name starts with “12.15.20”:
my_data %>% select(-starts_with("12.15.20"))

# Drop column 1
my_data %>% select(-1)

# Drop columns 1 to 3
my_data %>% select(-(1:3))

# Drop columns 1 and 3 but not 2
my_data %>% select(-1, -3)
