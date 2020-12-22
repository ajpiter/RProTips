#Use: Is there a difference between one variable of two groups 

#Example what is the difference between purchasing habits of old and young customers 

#Estimate the difference between two groups 
u1 = mean(old$variable) 
u2 = mean(new$variable) 
parameter = u1 - u2 

#If parameter equals 0 it indicates that there is no difference between the two groups 
#If parameter is > 0 then u1 is higher than u2, old customers spend more 
#If parameter is < 0 then u2 is higher than u1, new customers spend more 

