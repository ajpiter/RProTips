#Loading CSV File into RStudio without Readr Package 
#File > New File > R Script 
#In New Tab save csvfilename.R in file directory (where csv data is saved) 

#To Select the CSV File in R Studio & Set Working Directory 
#Menu > Session > Set Working Directory > Choose Directory > Source File Location > (In bottom right select the file you want) 

#Create a New Variable Name for File 
AmandaPiter2020F.exe1.df <- read.csv("ToyotaCorolla.csv", header = TRUE) 

#I will be following the questions from the PDF Self Exercise(R)_Phase1
#Each question will be numbered using the Slide#-Question# convention

#7-1 Find the dimension of the loaded data?
#Dimensions are the number of columns and rows 
dim(AmandaPiter2020F.exe1.df)

#7-2 How many variables does it have?
#There are 39 variables in AmandaPiter2020F.exe1.df

#7-3 What is the name of the 3rd, 4th , 8th, and 9th variables?
#shows specific columns variable.df[row, column] 
ls(AmandaPiter2020F.exe1.df[,c(3:4, 8:9)])

#7-4 Read the 1st, 5th, and 7th rows of the 2nd, 3rd, 4th, 8th, and 9th variables
View(AmandaPiter2020F.exe1.df[c(1, 5, 7),c(3:4, 8:9)]) #shows in new tab
print(AmandaPiter2020F.exe1.df[c(1, 5, 7), c(3:4, 8:9)]) #shows in console

#7-5 Show first 3 rows of the 2nd, 3rd, and 4th columns
View(AmandaPiter2020F.exe1.df[1:3,2:4]) #shows in new tab
print(AmandaPiter2020F.exe1.df[1:3, 2:4]) #shows in console

#7-6 Explore structure of variables. Which variables are categorical (type: Factor)?
str(AmandaPiter2020F.exe1.df)
#Model, Fuel_Type and Color are 
class(AmandaPiter2020F.exe1.df$Model) #class or typeof can tell you which variables are categorical
typeof(AmandaPiter2020F.exe1.df$Fuel_Type)
typeof(AmandaPiter2020F.exe1.df$Color)
#None of the variables in our dataset are already factors
#We have 3 variables, Model, Fuel_Type and Color that are characters
#character variables could be converted to factors using 
#AmandaPiter2020F.exe1.df$Model <- as.factor(AmandaPiter2020F.exe1.df$Model)
#class(AmandaPiter2020F.exe1.df$Model)

#7-7 Print first 5 rows of each categorical variable using $.
print(AmandaPiter2020F.exe1.df[1:5, c(2,8,11)])

#7-8 Find the level of each variable in the previous question.
levels(AmandaPiter2020F.exe1.df$Model) #answer is 'NULL' until you convert to factors
AmandaPiter2020F.exe1.df$Model <- as.factor(AmandaPiter2020F.exe1.df$Model)
class(AmandaPiter2020F.exe1.df$Model)
levels(AmandaPiter2020F.exe1.df$Model)
#Model has 372 levels 
AmandaPiter2020F.exe1.df$Fuel_Type <- as.factor(AmandaPiter2020F.exe1.df$Fuel_Type)
class(AmandaPiter2020F.exe1.df$Fuel_Type)
levels(AmandaPiter2020F.exe1.df$Fuel_Type)
#Fuel_Type has 3 levels, "CNG"    "Diesel" "Petrol"
AmandaPiter2020F.exe1.df$Color <- as.factor(AmandaPiter2020F.exe1.df$Color)
class(AmandaPiter2020F.exe1.df$Color)
levels(AmandaPiter2020F.exe1.df$Color)
# Color has 10 levels, "Beige"  "Black"  "Blue"   "Green"  "Grey"   "Red"    "Silver" "Violet" "White"  "Yellow"

#7-9 How many levels do Color and Fuel_Type have? What are they?
# Color has 10 levels 
#Fuel_Type has 3 levels

#7-10 Show first six rows of first 7 variables in two different ways.
AmandaPiter2020F.exe1.df
View(AmandaPiter2020F.exe1.df[c(1:6),c(1:7)]) #shows in new tab
print(AmandaPiter2020F.exe1.df[c(1:6), c(1:7)]) #shows in console
