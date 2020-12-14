#Explore a dataset by sumarrizing information about the variables 

# create column analysis dataframe
# first create a vector that counts how many columns are in the data frame
ColNumber <- (seq_len(ncol(data)))

# then turn the vector into its own data frame with the first column called ColNumber 
# based on the earlier vector object
DataDictionary <- as.data.frame(ColNumber)

# add a new column called colname based on the vector of colnames in the myData data frame
DataDictionary$colname <- (colnames(data))

# now add the variable type into the data frame as a new column called "type"
DataDictionary$DataType <- (sapply(data, class))
View(DataDictionary) 
