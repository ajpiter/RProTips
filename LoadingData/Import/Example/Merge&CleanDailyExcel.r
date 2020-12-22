#Packages Needed 
library(data.table)
library(readxl) #tidyr packages that reads Excel files without Java Dependencies  
library(openxlsx) #saves Excel files without Java Dependencies 
#library(xlsx) #saves Excel files, needs Java 
library(dplyr) 

#Import Today's File 
setwd("/Users/UserName/Documents/Folder/Subfolder")
getwd()

#Merge all xlsx files in wd folder, and import as a dataframe (takes 3-5 minutes)
Data <- list.files(pattern = "*.xlsx") %>% 
  lapply(read.xlsx) %>% 
  bind_rows

#Create a Data Dictionary of the Day 1 file to Explore Data 
ColNumber <- (seq_len(ncol(Data))) # first create a vector that counts how many columns are in the data frame
DataDictionary <- as.data.frame(ColNumber) # then turn the vector into its own data frame with the first column called ColNumber 
DataDictionary$colname <- (colnames(Data)) # add a new column called colname based on the vector of colnames in the myData data frame
DataDictionary$DataType <- (sapply(Data, class)) # now add the variable type into the data frame as a new column called "type"
View(DataDictionary) 

#Based on the Data Dictionary Select the Columns Needed to create a Diversity Ratios table 
#Each Day create a new Diversity Ratios table where DR stands for Diversity Ratio
DiversityRatios <- select(Data, DATE_OF_BIRTH_YEAR, GENDER, RACE_DESC_1, RACE_CODE_1,
                          ORG_CODE, ORG_NAME,
                          PAY_PLAN, SUPERVISOR_IND, CLASS_CODE, CLASS_TITLE, 
                          EMP_ACTIVE_DATE, POS_ACTIVE_DATE, 
                          BBAND_OCC_GROUP_TITLE, BBAND_OCCUPATION_TITLE, 
                          REPORT_DATE)

#Create A Data Dictionary for the Diversity Ratio tables 
ColNumber <- (seq_len(ncol(DiversityRatios))) # first create a vector that counts how many columns are in the data frame
DRDataDictionary <- as.data.frame(ColNumber) # then turn the vector into its own data frame with the first column called ColNumber 
DRDataDictionary$Variable <- (colnames(DiversityRatios)) # add a new column called colname based on the vector of colnames in the myData data frame
DRDataDictionary$DataType <- (sapply(DiversityRatios, class)) # now add the variable type into the data frame as a new column called "type"
View(DRDataDictionary) #check your work

#Based on the Data Dictionary convert variables to correct data types 
#DR121520$DATE_OF_BIRTH_YEAR remains as a numeric as we will tranform later 
DiversityRatios$GENDER <- as.factor(DiversityRatios$GENDER)
DiversityRatios$RACE_DESC_1 <- as.factor(DiversityRatios$RACE_DESC_1)
#RACE_CODE_1 remains as character format 'R1'
DiversityRatios$ORG_CODE <- as.numeric(DiversityRatios$ORG_CODE)
DiversityRatios$ORG_NAME <- as.factor(DiversityRatios$ORG_NAME)
DiversityRatios$PAY_PLAN <- as.factor(DiversityRatios$PAY_PLAN)
DiversityRatios$SUPERVISOR_IND <- ifelse(DiversityRatios$SUPERVISOR_IND == "Y", "TRUE", "FALSE") #Clean by first converting Y and N values to "TRUE" and "FASLE 
DiversityRatios$SUPERVISOR_IND <- as.logical(DiversityRatios$SUPERVISOR_IND) #then convert to binary 
DiversityRatios$CLASS_CODE <- as.numeric(DiversityRatios$CLASS_CODE)
#CLASS_TITLE remains as character 
DiversityRatios$EMP_ACTIVE_DATE = as.character(sub(" .*", "", DiversityRatios$EMP_ACTIVE_DATE)) #removes everything after the " " 
DiversityRatios$EMP_ACTIVE_DATE <- as.Date(DiversityRatios$EMP_ACTIVE_DATE, "%d-%b-%y")
DiversityRatios$POS_ACTIVE_DATE = as.character(sub(" .*", "", DiversityRatios$POS_ACTIVE_DATE)) #removes everything after the " " 
DiversityRatios$POS_ACTIVE_DATE <- as.Date(DiversityRatios$POS_ACTIVE_DATE, "%d-%b-%y")
#BBAND_OCC_GROUP_TITLE remains as character 
#BBAND_OCCUPATION_TITLE remains as character 
#REPORT_DATE remains as date 

#update the DR Data Dictionary 
DRDataDictionary$DataType <- (sapply(DiversityRatios, class)) # now add the variable type into the data frame as a new column called "type"
View(DRDataDictionary) #check your work

#TRANSFORM DATA 

#DATE_OF_BIRTH_YEAR to AGE_GROUPS based on unique bin sizes  
agebreaks <- c(1920, 1950, 1955, 1960, 1970, 1980, 1990, 1998, 2002, 2020)
agelabels <- c("Under 18","18-22","22-30","31-40","40-50","50-60","60-65","65-70", "70+") #should have once less label than breaks
setDT(DiversityRatios)[ , AGE_GROUPS := cut(DATE_OF_BIRTH_YEAR, 
                                            breaks = agebreaks, 
                                            right = TRUE, 
                                            labels = agelabels)]
DiversityRatios <- DiversityRatios[,-1] #removes the first column which contains DATE_OF_BIRTH_YEAR
View(DiversityRatios) #check your work 

#Replace 1 and 2 in Gender with Male and Female 
DiversityRatios$GENDER <- ifelse(DiversityRatios$GENDER == "1", "Male", ifelse(DiversityRatios$GENDER == "2", "Female", "NA"))

#Create a new Race field. 
#The two race fields in our dataset have a very high NULL rate. Combine the information to reduce the number of NULL fields
DiversityRatios$RACE <- ifelse(DiversityRatios$RACE_CODE_1 == "R1", "White", 
                               ifelse(DiversityRatios$RACE_CODE_1 == "R2", "Black or African American",
                                      ifelse(DiversityRatios$RACE_CODE_1 == "R3", "Hispanic or Latino", 
                                             ifelse(DiversityRatios$RACE_CODE_1 == "R4", "Asian",
                                                    ifelse(DiversityRatios$RACE_CODE_1 == "R5", "American Indian or Alaska Native",
                                                           ifelse(DiversityRatios$RACE_CODE_1 == "R6", "Native Hawaiian or Other Pacific Islander",
                                                                  ifelse(DiversityRatios$RACE_CODE_1 == "R7", "Some Other Race or Two or More Races",
                                                                         ifelse(DiversityRatios$RACE_CODE_1 == NULL, DiversityRatios$RACE_DESC_1, 
                                                                                "NA"))))))))
#check your work 
RACE <- DiversityRatios %>%
  group_by(RACE) %>%
  count(RACE) #RACE went from 11k NULL to 98 NULL 
DiversityRatios <- DiversityRatios[,-2:-3] #removes RACE_CODE and RACE_DESC columns 

#Transform date categories into year categories 
DiversityRatios$EMP_ACTIVE_YEAR <- DiversityRatios$EMP_ACTIVE_DATE
DiversityRatios$EMP_ACTIVE_YEAR = as.character(sub("-.*", "", DiversityRatios$EMP_ACTIVE_YEAR))
DiversityRatios$POS_ACTIVE_YEAR <- DiversityRatios$POS_ACTIVE_DATE
DiversityRatios$POS_ACTIVE_YEAR = as.character(sub("-.*", "", DiversityRatios$POS_ACTIVE_YEAR))

#Remove previous date variables 
DiversityRatios <- DiversityRatios[,-8:-9]

#Update the Diversity Ratios Data Dictionary 
ColNumber <- (seq_len(ncol(DiversityRatios))) # first create a vector that counts how many columns are in the data frame
DRDataDictionary <- as.data.frame(ColNumber) # then turn the vector into its own data frame with the first column called ColNumber 
DRDataDictionary$Variable <- (colnames(DiversityRatios)) # add a new column called colname based on the vector of colnames in the myData data frame
DRDataDictionary$DataType <- (sapply(DiversityRatios, class)) # now add the variable type into the data frame as a new column called "type"
View(DRDataDictionary) #check your work

##### Download the Clean Diversity Ratios File in Excell #####
setwd("/Users/UserName/Documents/Folder/NewSubfolder")
SysDate <- Sys.Date()
OutputFile <- paste0(SysDate,"DiversityRatios.xlsx")
openxlsx::write.xlsx(DiversityRatios, file = OutputFile, keepNA = TRUE, 
                     overwrite = FALSE)

#write.xlsx(DiversityRatios, file = OutputFile) #uses xlsx package, has Java dependendies 

