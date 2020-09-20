#Dplyr Verb 6 arrange() is similar to sort command in Excel 

summary(WestRoxbury1Q.df) #check column names and ranges 
head(arrange(WestRoxbury.df, HomeValue)) #head() lets you check your work 

#Use desc() to arrange from highest to lowest 
head(arrange(WestRoxbury1Q.df, desc(HomeValue)))

#order matters when arranging by multiple columns
#Homes are ordered by price, if there are 2 homes with the same price then ordered by bedroom
#view(arrange(WestRoxbury1Qt.df, HomeValue, Bedrooms))

#Homes are ordered so all 1 bedrooms are arranged in assending value, followed by all 2 bedrooms 
#view(arrange(WestRoxbury1Qt.df, Bedrooms, HomeValue))
