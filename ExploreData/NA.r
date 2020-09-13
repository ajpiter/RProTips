#if you compare missing NA values, the result will always be NA 
4 > NA 
[1] NA 

#test to see if value is NA 
is.na(x) 
[1] FALSE 
is.na(x = NA) 
[1] TRUE 
