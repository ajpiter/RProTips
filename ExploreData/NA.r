#NA data could exist but dosent. Has structure. 
#Null lack of structure where data could exisit. 
#NAN not a number ie. 0/0 

NA #default NA value is logical 
NA_real 
NA_integer 
NA_Character

#if you compare missing NA values, the result will always be NA 
4 > NA 
[1] NA 

#test to see if value is NA 
is.na(x) 
[1] FALSE 
is.na(x = NA) 
[1] TRUE 
