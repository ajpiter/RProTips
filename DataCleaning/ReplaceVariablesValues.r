

#Remove all the characters after a delimiter character 
DataTable$Variable = as.character(sub(" .*", "", DataTable$Variable)) #removes everything after the space
DataTable$Variable = as.character(sub(",.*", "", DataTable$Variable)) #removes everything after the comma 

#To add USA at the end of each instance for the variable Address
DataTable$Address = as.character(sub(" .*", "USA", DataTable$Address)) #adds USA at the end of the address data 


#Use BRK for all BRK and NJN games 
Vucevic$Opponent[Vucevic$Opponent == "NJN"] <- "BRK"

#Use CHO for all CHO and CHA games 
Vucevic$Opponent[Vucevic$Opponent == "CHA"] <- "CHO"
