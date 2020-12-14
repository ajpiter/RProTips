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
FullName <- 
