#shows specific columns variable.df[row, column] 
variable.df[1:10, 1]              #Shows 1st 10 rows, 1 column only 
variable.df[1:10, ]               #Shows 1st 10 rows, for all columns 
variable.df[5, 1:10]              #Shows 5th row, columns 1-10 
variable.df[5, c(1:2, 4, 8:10)]   #Shows 5th row, select columns 
variable.df[ ,1]                  #Shows entire 1st column 

#Another way to show data
#This method is useful if your target or predictor variable in column 1 
variable.df$TOTAL_VALUE           #Shows entire 1st column 
variable.df$TOTAL_VALUE[1:10]     #Shows 1st 10 rows of 1st column 
length(variable.df$TOTAL_VALUE)   #Counts number of rows
mean(variable.df$TOTAL_VALUE)     #Mean of of the first column 

#selecting objects from lists is similar
variable <- (list[[5]][[4]])
newListVariable <- list(x, y, z) 

#save time by creating a new variable and converting the datatype with a single line of code 
newListVariable <- as.logical(list[[5]],[[4]]) 
