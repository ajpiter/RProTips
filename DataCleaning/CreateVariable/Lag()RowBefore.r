#Lag() creates a variable based off a previous row value. 

#Create New Variable Back to Back 

#Step 1: Use lag() to create a variable Days Since Last Game 
Vucevic <- Vucevic %>% 
  arrange(Vucevic$Date) %>%
  mutate(DaysSinceLastGame = Vucevic$Date - lag(Vucevic$Date))

#Step 2: Create a BackToBack Variable 
Vucevic$BackToBack <- ifelse(Vucevic$DaysSinceLastGame == 1, TRUE, FALSE)

#Step 3: Remove Days Since Last Game Variable 
Vucevic <- Vucevic %>% select(-Date, -DaysSinceLastGame)
