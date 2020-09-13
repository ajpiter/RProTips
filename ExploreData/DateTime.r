#Datatype Date for dates w/o time 
#Datatype POSIXct for dates with time 

#To check your computer system date or time 
str(object = sys.Date()) #checks date 
str(object = sys.time()) #checks time 

#The standard date format in R is YYYY-MM-DD

#To change the output view use the format()
format(x= sys.time(), format = "%Y" #output is the current year in the system 
#Code to change the format is the follow 
       %Y #Year 
       %m #Month 
       %d #Day 
       %H #Hour 
       %M #Minute 
       %S #Second 

#subtract dates to calculate a period of time 
as.POSIXct(x = "2001-09-11") - as.POSIXct(x = "1941-12-07")
#result is the time difference in number of days 

#cannot add two dates 

#when adding numbers to POSIXct type, you are adding seconds 
as.POSIXct(x = "2001-09-11") + 1 
[1] "2001-09-11 00:00:01 ACOT" 

#To add an entire day to POSIXct use multiplication 
as.POSIXct(x = "2001-09-11") + 60*60*24
