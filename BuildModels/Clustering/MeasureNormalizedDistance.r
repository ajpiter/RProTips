

# normalize input variables
#“scale”: without further arguments, normalizes each column
utilities.df.norm<-sapply(utilities.df, scale)

# set row names of utilities in the normalized data frame 
row.names(utilities.df.norm) <-row.names(utilities.df)

# compute normalized distance based on Sales (column 6) and Fuel Cost (column 8)
d.norm<-dist(utilities.df.norm[, c(6,8)], method = "euclidean")
