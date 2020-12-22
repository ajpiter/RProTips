#NA data could exist but dosent. Has structure. 
#Null lack of structure where data could exisit. 
#NAN not a number ie. 0/0 

NA #default NA value is logical 
NA_real 
NA_integer 
NA_Character

#if you compare missing NA values, the result will always be NA 
4 > NA 
[1] NA 

##### Test to see if single value is NA #####
is.na(x) 
[1] FALSE 
is.na(x = NA) 
[1] TRUE 

##### Check to see if Data Table is NA ##### 
records.missing <- rowSums(is.na(DataTable))>0 
View(records.missing)

##### Keeps only non-missing values #####
DataTable.nonmissing <- DataTable[!records.missing, ] 
dim(DataTable.nonmissing)
dim(DataTable)

##### Creates New True or False Column for Missing Data #####
# missing: if missing, set "true", otherwise "false" into records.missing
DataTable$MissingVariable <- rowSums(is.na(DataTable))>0 

