This is really helpful, to name the rows with their corresponding primary key 

#set row names to the Utilities column (the 1st column with utility company names)
row.names(utilities.df) <-utilities.df[,1]  
