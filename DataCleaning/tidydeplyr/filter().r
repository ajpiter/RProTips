#deplyr Verb 3, filter() is used to keep only rows matching some logical criteria 

#For the housing dataset I want to keep the home values in the bottom quartile 
summary(WestRoxbury.df) #The first quartile home values is up to 325125

WestRoxbury1Q.df <- filter(WestRoxbury.df, HomeValue < 325125)
summary(WestRoxbury1Q.df) #All Home Values are between 105000 and 325100

#I might need the other quartiles as comparisons later, so I create them now 
summary(WestRoxbury.df)

#There are multiple ways to filter() based on multiple criteria
WestRoxbury2Q.df <- filter(WestRoxbury.df, HomeValue > 325125, HomeValue < 375900) #passed in one at a time
summary(WestRoxbury2Q.df) #Check your work 

WestRoxbury3Q.df <- filter(WestRoxbury.df, HomeValue > 375900 & HomeValue < 438775) #Using logical operators & and, or |
WestRoxbury4Q.df <- filter(WestRoxbury.df, HomeValue > 438775)
