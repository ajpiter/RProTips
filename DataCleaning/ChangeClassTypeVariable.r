#

#To find the type of variable for a single row
class(dataframename.df$ColumnName) 
# output could be "charter" or "factor" etc. 

#To convert data types, use the following functions 
as.interger()
as.numeric()
as.character()
as.logical()
as.POSIXct()
as.POSIXit()
as.Date()

#To change the class of variable from "charter" to "factor"
dataframename.df$ColumnName <- as.factor(dataframename.df$ColumnName) 
class(dataframename.df$ColumnName)
#output should be factor

#levls() shows the word labels for factor variables 
levels(dataframename.df$ColumnName) 
#output will show the text labels of a factor variable, not the numeric numbers 

#Below is an example from Data Mining with R 2.5 

> class(housing.df$REMODEL)
[1] "character"
> housing.df$REMODEL <- as.factor(housing.df$REMODEL)
> class(housing.df$REMODEL)
[1] "factor"
> head(housing.df$REMODEL)
[1] None   Recent None   None   None   Old   
Levels: None Old Recent
> REMODELFactor <- as.factor(housing.df$REMODEL)
> class(housing.df[ ,14])
[1] "factor"
> levels(housing.df[, 14])
[1] "None"   "Old"    "Recent"
> levels(housing.df$REMODEL)
[1] "None"   "Old"    "Recent"
> levels(housing.df)
NULL
> levels(housing.df$FIREPLACE)
NULL
> class(housing.df$TAX)
[1] "integer"
> class(housing.df$ROOMS)
[1] "integer"
> class(housing.df$FLOORS)
[1] "numeric"
> class(housing.df)
[1] "data.frame"
> class(sample)
[1] "character"
> class(Days_of_week)
[1] "character"
> class(REMODELFactor)
[1] "factor"
> class(oversample)
[1] "character"

#Use Case Example from DataCamp Loading Data Into R

#Without Chaning Column Datatype 
# Previous call to import hotdogs.txt
hotdogs <- read.delim("hotdogs.txt", header = FALSE, col.names = c("type", "calories", "sodium"))
# Display structure of hotdogs
str(hotdogs)

#Changing Column Datatype 
# Edit the colClasses argument to import the data correctly: hotdogs2
hotdogs2 <- read.delim("hotdogs.txt", header = FALSE, 
                       col.names = c("type", "calories", "sodium"),
                       colClasses = c("factor", "NULL", "numeric"))
# Display structure of hotdogs2
str(hotdogs2)
