#New Variables can be created 
datatable$newvariablename <- how new variable should be calculated 

#Calculate Rate 
data$Rate <- data$occurrs / data$allobservations 

#Create a new variable based off a regression model 
HouseProperties$PredictPrice2 <- with(HouseProperties, -3729000 + 
                        (65166 *HouseProperties$sqft_living) + 
                        (3.629 *HouseProperties$sqft_lot) + 
                        (95620 *HouseProperties$grade) + 
                        (1759 *HouseProperties$yr_built))
                        
#Create a new variable by concatenating strings 
FullName <- paste0(data$firstname, data$lastname) 
#use function paste0() to join strings without spaces 
paste0("butter", "fly") 
[1] "butterfly"

#Create a new variable by concatenating a string and numeric
Course <- paste0(data$CourseCode, data$CourseNumber) 
#paste() and paste0() can join multiple data types 
y2k <- paste0("NYE", "2000") 
y2k #prints the variable 
[1] "NYE2000"
