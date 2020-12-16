#Example came from article here: https://medium.com/@prashant.nair2050/creating-dummy-variables-for-categorical-data-in-r-programming-c2afe5d1a4ac

#Load library 
library(fastDummies)
library(knitr) 

#create a dataset
fastDummies_example <- data.frame(numbers = 1:3,
                             gender  = c("male", "male", "female"),
                             animals = c("dog", "dog", "cat"),
                             dates   = as.Date(c("2012-01-01", "2011-12-31","2012-01-01")),
                             stringsAsFactors = FALSE)
#prints datset
knitr::kable(fastDummies_example)

#creates new variable columns for dog and cat as binary categories 
results <- fastDummies::dummy_cols(fastDummies_example, select_columns = "animals")
#prints new dataset
knitr::kable(results)

#if using to create dummy variables don't forget to delete one of the columns 
housing.df<-housing.df[, 1:15]]# remove16th column, keeping only 1st -15th
