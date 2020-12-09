#Correlations show the stregth and direction of 

#start by determining the data types of your variables 
summary(data) 

#if every variable in the dataset is quantative 
cor(data, use="all.obs", method="pearson") 

#Specify columns if the entire dataset is not quantative
cor(data$column, data$column) 

#Results show stregth and direction 
#Correlations are strong when closer to 1 or -1 and weak when close to 0 
#Positive, as X increases, Y increases 
#Negative, as X increases, Y decreases 
