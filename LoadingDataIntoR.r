#Loading CSV File into RStudio 
# File > New File > R Script 
# In New Tab save csvfilename.R in file directory (where csv data is saved) 

#To Select the CSV File in R Studio & Set Working Directory 
#Menu > Session > Set Working Directory > Choose Directory > Source File Location > (In bottom right select the file you want) 

#Create a New Variable Name for File 
variable.df <- read.csv("csvfilename.csv", header = TRUE) 

#Find Dimensions of Data Frame
#Dimensions are the number of columns and rows 
dim(variable.df) 
#output [1] 5802 14 
#output means 1 table, 5802 rows, and 14 columns

#show the first 6 rows of a table 
head(variable.df) 

#show all the data in a new tab in RStudio 
View(variable.df) 

#shows specific columns variable.df[row, column] 
variable.df[1:10, 1]              #Shows 1st 10 rows, 1 column only 
variable.df[1:10, ]               #Shows 1st 10 rows, for all columns 
variable.df[5, 1:10]              #Shows 5th row, columns 1-10 
variable.df[5, c(1:2, 4, 8:10)]   #Shows 5th row, select columns 
variable.df[ ,1]                  #Shows entire 1st column 

#Another way to show data
#This method is useful if your target or predictor variable in column 1 
variable.df$TOTAL_VALUE           #Shows entire 1st column 
variable.df$TOTAL_VALUE[1:10]     #Shows 1st 10 rows of 1st column 
length(variable.df$TOTAL_VALUE)   #Counts number of rows
mean(variable.df$TOTAL_VALUE)     #Mean of of the first column 

#Summary Stats on Dataframe 
summary(variable.df) 
