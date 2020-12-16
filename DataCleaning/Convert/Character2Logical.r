#A logicial class type is a binary True False value 

#Convert a variable from character to logical values using as.logical()
DR121520$SUPERVISOR_IND <- as.logical(DR121520$SUPERVISOR_IND)

#If the values for the variable are not already "TRUE", "FALSE", "T", or "F" you will first need to convert the values 
#Here there was a binary "Y", "N" variable which was converted to "TRUE", "FALSE"
DataTable$Variable <- ifelse(DataTable$Variable == "Y", "TRUE", "FALSE") 
DataTable$Variable <- as.logical(DataTable$Variable)
