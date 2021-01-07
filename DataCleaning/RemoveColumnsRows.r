----- #Removing Rows & Columns by Index -----
#Remove Unessary Rows, and Columns [Row, Column]
DataFrame <- DataFrame[-1,] #row
DataFrame <- DataFrame[,-1:-2]#columns
DataFrame <- DataFrame[,-2] #columns

DataFrame <- DataFrame[-c(2, 4, 6), ] #Removes Columns

----- #Removing Rows in Base R by Value ----- 
#Remove rows where the values in specified columns equal specified values 
DataFrame <- DataFrame[!(DataFrame$Column1 =="B" & DataFrame$Column2==0),]

#Use subset to remove rows as well 
employee.data <- subset(employee.data, name!="Dan")

----- #Removing Columns using TidyVerse ----- 
library(tidyverse)

#Removing Columns by Name, removes the two specified columns 
my_data %>% select(-Column1, -Column50)

#Removing all columns between two column names
my_data %>% select(-(Column1:Column50))

#Removing all columns whose name starts with “12.15.20”:
my_data %>% select(-starts_with("12.15.20"))

#Removes Columns Based on Primary Key (helpful since row numbers and indexes change) 
my_data <- my_data[ !(my_data$id %in% c(1000, 2000, 3000)), ]

# Drop column 1
my_data %>% select(-1)

# Drop columns 1 to 3
my_data %>% select(-(1:3))

# Drop columns 1 and 3 but not 2
my_data %>% select(-1, -3)

----- #Additional Ways To Remove Rows, ie Patterns Odds/Evens/Sequence -----
#Stackoverflow https://stackoverflow.com/questions/12328056/how-do-i-delete-rows-in-a-data-frame

