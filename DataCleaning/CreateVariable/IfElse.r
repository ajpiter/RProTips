#Use ifelse statements to create new conditional variables

DataFrame$NewVariable <- ifelse(Condition, Result if True, Result if False) 

#Nested ifelse() to Create New Variable Conference
Vucevic$Conference <-  ifelse(Vucevic$Opponent == "ATL", "Eastern", 
                        ifelse(Vucevic$Opponent == "BOS", "Eastern",
                        ifelse(Vucevic$Opponent == "BRK", "Eastern",
                        ifelse(Vucevic$Opponent == "CHA", "Eastern",
                        ifelse(Vucevic$Opponent == "CHO", "Eastern",
                        ifelse(Vucevic$Opponent == "CHI", "Eastern", FALSE) 
                        
#Nested ifelse() with "or" opperator |  to Create New Variable Time Zone 
Vucevic$TimeZone <- ifelse(Vucevic$Location == "Home", "Eastern", 
                        ifelse(Vucevic$Location == "Away" & Vucevic$Opponent == "ATL", "Eastern", 
                        ifelse(Vucevic$Location == "Away" & Vucevic$Opponent == "BOS", "Eastern",
                        ifelse(Vucevic$Location == "Away" & Vucevic$Opponent == "BRK", "Eastern",
                        ifelse(Vucevic$Location == "Away" & Vucevic$Opponent == "CHA", "Eastern", FALSE) 
