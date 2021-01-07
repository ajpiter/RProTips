#Updating the names of columns in a dataset could help make your data more meaningful and useful for documentation 
#You could also create shorter names to decrease the charters in your code 
#I tend to use longer more descriptive column names which helps when returning to code later

----- #Change Based on Old Column Names ----- 
names(DataFrame)[names(DataFrame) == "OldColumnName"] <- "NewColumnName"
names(OrlGameLog)[names(OrlGameLog) == "Rk"] <- "GameRank"
names(OrlGameLog)[names(OrlGameLog) == "G"] <- "SeasonGame"

---- #Change Based on Column Index -----
colnames(housing.df)[1] <-c("TOTAL_VALUE")      #from TOTAL.VALUE to TOTAL_VALUE
names(housing.df)[1]     #check the name of the first variable (before and after) 

colnames(OrlGameLog)[4] <-c("Location") 
colnames(housing.df)[5] <-c("Opponent") 

#Another method to change the name of a column
names(data)[1] <- "New Column Name" #change the name of the column
names(data)[1] #check the name of the column 
