#The result of a comparison will always be a logical value type
#ouputs TRUE or FALSE or NA 

x > y 
[1] TRUE 

x >= y 
[1] TRUE 

#do values equal each other 
x == z #will return TRUE even if data types are equal 
[1] TRUE 
identical (x, z) #use if you also want to know if the data types are equal 
[1] FALSE 

#if you need an answer to be exact, don't compare real numbers (decimials) against each other 
#R dosen't store decimals properly 
0.1 + 0.2 > 0.3 
[1] True 

#use digits in a print() to specify how many degits beyond the decimial to display 
print(x = 3.14 *(y=4^2), digits =4) 

#if you compare missing NA values, the result will always be NA 
4 > NA 
[1] NA 

#A logical vale compared to another logical value results in a truth table 
Gender == Graduated 
#results in Truth Table 

#Null Comparions result in nothing as logical value with length 0 
21 > NULL 
[1] logical(0) 

#when comparing two or more expressions you need to break them up 
21 > x > 18 # won't work 
x < 21 & x > 18 
[1] TRUE 



