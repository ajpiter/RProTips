#Example of Oversampling from Data Mining with R 2.4 page 25
> oversample <- sample(row.names(housing.df), 5, prob = ifelse(housing.df$ROOMS>10, 0.9, 0.01))
> housing.df[s,]

#Explination of using sample() to oversample the data
valuename <- sample(row.names(dataframename.df), 5, prob = ifelse(dataframename.df$COLUMNNAME>10, 0.9, 0.01))
dataframename.df[value, ]
#where 5 is the number of rows to be sampled
#where >10 is the value of COLUMNNAME we would like to oversample. In this example more than 10 rooms in a house. 
#where 0.9 indicates that it will have a 90% chance of including the observation in the sample if it has more than 10 rooms
#where 0.01 indicates that is will have a 1% chance of including the observation in the sample if it has 10 or less rooms

#https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/row.names
#row.names() is the number of rows in the dataframe you are including 

#https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/sample
#In the Sample function, prob is a yes no argument 
#The optional prob argument can be used to give a vector of weights for obtaining the elements of the vector being sampled.
#After the first , is what happens if it is yes 
#After the second , is what happens if it is no 
#They need not sum to one, but they should be non-negative and not all zero

#https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/ifelse
#use the if statement 
#ifelse(test, yes, no)

#protip don't use oversample as the value name in the future, because it is a protected name in R. 
