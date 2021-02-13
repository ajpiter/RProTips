## Data Types 

The most basic way to convert Data Types in R is: 
- as.interger(Data$Variable)
- as.numeric(Data$Variable)
- as.character(Data$Variable)
- as.logical(Data$Variable)
- as.POSIXct(Data$Variable)
- as.POSIXit(Data$Variable)
= as.Date(Data$Variable)

The easiest way to convert mutliple variables at once is 
library(hablar) 
Vucevic <- Vucevic %>% convert(

  int("TeamGameSeason", "PlayerGameSeason", "FG", "FGA", "3P", "3PA", "FT", "FTA", "ORB", 
      "DRB", "TRB", "AST", "STL", "BLK", "TOV", "PF", "PTS", "+/-", "PlayerGameCareer"), 
      
  num("FG%", "3P%", "FT%", "FG%", "FT%", "3P%", "GmSc"),
  
  dte("Date"),
  
  fct("Team", "Location", "Opponent", "WinLoss", "GameStarted"))
  
## 

- **AddingDataTypes:** Reference when creating new variables with variables of different data types. 
- **Character2Date:** Specifies the date format options. 
- **
