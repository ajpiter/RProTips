#Examples from Beyond Spreadsheets with R, Chapter 3 

* mutiplication 
/ division 
** exponent method 1 
^ exponent method 2 

#within a sum() if any data is NA the result is NA 
#fix by removing the NA values within the sum()
sum(1,2,3,4, NA) 
[1] NA
sum(1,2,3,4,NA, na.rm = TRUE) #removes the NA values 
[1] 10 
