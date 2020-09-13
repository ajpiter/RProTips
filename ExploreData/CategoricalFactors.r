#Categorical values are 
#Nominal if they are names only. Example Boy Girl 
#Binomial if they are numbers only. Example 0 1 (or TRUE FALSE, or Yes No) 
#ordinal if they are categories. Example Small Medium Large

#factors convert categorical data to a numbered indiex 
#numbers are typically assigned alphabetically 

str(object = factor(x = c("Small", "Medium", "Large") 
[1] Factor with 3 levels "Large" "Medium" "Small" 3 2 1 

#to specify the order of the factos use the levels argument 
sizes <- factor(x=c("medium", "small", "large") levels = c("small", "medium", "large")
    ordered = TRUE) 
str(object = sizes) 
table (sizes) 

#ProTip: Check your factor levels to make sure you don't have 
# Male, male, and M 
levels(variable) 
levels(gender) 
[1] "Male" "Female" 

