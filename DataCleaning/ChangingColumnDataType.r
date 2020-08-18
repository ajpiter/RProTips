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
