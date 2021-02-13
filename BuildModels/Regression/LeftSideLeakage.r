# Left Side Leakage 

When input variables are part of the response variable. 

----- #Example of Left Side Leakage, from Vucevic Double-Double ----- 

"""
When predicting if Vucevic will have a Double Double we need to make sure that our prediction is not based on any of the variables 
that are used to calculate a Double Double. 

In addition to removing variables for Points, Rebounds, Assists, Steals and Blocks, variables that are based 
in part on those variables will also need to be removed. For example Offensive Rebounds, Free Throws, and Free Throw Attempts. 
"""

#Create a backup of the Vucevic data frame just in case 
VucevicBackup <- Vucevic

#Removing Variables from the Data Set Vucevic that cause left side leakage 
Vucevic <- Vucevic %>% select(-FG, -FGA, -FT, -FTA, -ORB, -DRB, -TRB, -AST, -STL, -BLK, -PTS, -GmSc, -TripleDouble)
#Any variable names that start with a number, or have a % sign will need to be included in "" to remove 
Vucevic <- Vucevic %>% select(-'FG%', -'3P', -'3PA', -'3P%', -'FT%')
