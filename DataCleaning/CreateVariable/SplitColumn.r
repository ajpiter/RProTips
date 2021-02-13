
#Use str_split_fixed() to split a column

NewDataFrame <- str_split_fixed(Data$Column, "deliminator", # columns) 
DataFrame <- cbind(DataFrame, NewDataFrame) 
DataFrame <- DataFrame %>% select(-ColumnToDelete) 

----- #Format MM:SS to MM and SS -----
#Split MinsPlayed Column into two columns 
Index <- str_split_fixed(Vucevic$MinsPlayed, ":", 2) #Create County Index Matrix
Vucevic <- cbind(Vucevic, Index) #Add CountyIndex Matrix to CountyIncome DataFrame
names(Vucevic)[names(Vucevic) == "1"] <- "Minutes" 
names(Vucevic)[names(Vucevic) == "2"] <- "Seconds" 

----- #Format W (+6) to W ----- 

#Create Index Matrix
Index <- str_split_fixed(Vucevic$WinLoss, " ", 2) 

#Add Matrix to DataFrame
Vucevic <- cbind(Vucevic, Index) 

#Remove Orginal Column 
Vucevic<- Vucevic %>% select(-WinLoss)

#Rename Index Column 1
names(Vucevic)[names(Vucevic) == "1"] <- "WinLoss" 

#Remove Index Column 2 
Vucevic<- Vucevic %>% select(-"2")
