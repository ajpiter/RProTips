#There are a bunch of packages you can use to load CSV for Excel files. 

----- #Import Without Code -----
#Naviage in RStudio to 
#File > Import Dataset > From Excel 
#Click Browse and Select Your File 
#Click Import 

----- #Set Working Directory ----- 
#For most imports you will need to specify where the file is locatated
#It's easiest if the file you'd like to import is saved in your working directory 
getwd() #outputs your current working directory 
#"/Users/ComputerName/Documents/FolderName/SubFolderName"
setwd("/Users/ComputerName/Documents/FolderName/SubFolderName") 
#To Select the CSV File in R Studio & Set Working Directory 
#Menu > Session > Set Working Directory > Choose Directory > Source File Location > (In bottom right select the file you want) 

----- #Simple Import ----- 
#Create a New Data Frame Name for File 
DataFrame <- read.csv("csvfilename.csv", header = TRUE) 

----- #Combine Multiple DataFrames After Import -----
MasterDataFrame <- rbind(DataFrame, DataFrame2, DataFrame3, DataFramei)

----- #Import a Specific Worksheet -----
mydata <- read.xlsx("c:/myexcel.xlsx", sheetName = "mysheet")
#Source: https://www.statmethods.net/input/importingdata.html

----- #Import File, With Today's Date ----- 
#For files with the naming convention YYYY-MM-DD.FileName 
setwd("/Users/ComputerName/Documents/FolderName/SubFolderName") 
Sys.Date()
SysDate <- Sys.Date()
FileImportName <- paste0(SysDate,"ISaveANewVersionOfFileDaily.xlsx")
FileImport <- read_excel(FileImportName)

------ #Combine All CSV Files into One Import File -----
#This works if you pull a dataset daily and want to make a master file 
#Helpful if each file contains a Variable for Record Created Date, indicating the orginal file 
setwd("/Users/ComputerName/Documents/FolderName/SubFolderCombineFiles") #All the files to combine should be in unique folder 
list_file <- list.files(pattern = "*.csv") %>% 
  lapply(read.csv, stringsAsFactors=F) %>% 
  bind_rows 

----- #Check Import by Exploring Data ----- 
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

----- #DataCamp Examples -----

#CSV Example 
# Load the readr package
library(readr)
# Import potatoes.csv with read_csv(): potatoes
potatoes <- read_csv("potatoes.csv")


#TXT Example, specifing Column Names 
library(readr) 
# Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")
# Import potatoes.txt: potatoes
potatoes <- read_tsv("potatoes.txt", col_names = properties)
# Call head() on potatoes
head(potatoes)
