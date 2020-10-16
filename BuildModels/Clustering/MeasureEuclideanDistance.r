# load Utilities data and check row names
utilities.df<-read.csv("Utilities.csv")
row.names(utilities.df)

# set row names to the Utilities column (the 1st column with utility company names)
row.names(utilities.df) <-utilities.df[,1]  

# remove the utilities column (no need the 1st column with utility company names)
utilities.df<-utilities.df[,-1] 

# clean the data to measure distance# compute Euclidean distance
dist(utilities.df, method = "euclidean")
