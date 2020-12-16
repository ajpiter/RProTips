#The basic function to convert to class type date 
as.Date(x, "format")

#Example: "11-DEC-20 12.03.37.157660 AM" character to dates
DataTable$Variable = as.character(sub(" .*", "", DataTable$Variable) #removes everything after the " " 
#output 11-DEC-20
DataTable$Variable <- as.Date(DataTable$Variable, "%d-%b-%y") #Converts to a date by specifing how the data is written


#A list of date formats can be found here: https://www.statmethods.net/input/dates.html
