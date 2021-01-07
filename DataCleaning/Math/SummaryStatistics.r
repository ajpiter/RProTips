
#can write out querries for summary stats indivdually 
mean(housing.df$MEDV)
sd(housing.df$MEDV)

#or call summary() function 
summary(housing.df$MEDV)

#or use sapply()  
sapply(housing.df, summary)
# sapply(x, FUN): apply FUN(a function) to the elements of the input 
#(e.g., list and vector), returning the result of the function, a list of the same length as x.

#or create dataframe with summary stats 
data.frame(mean=sapply(housing.df, mean), 
  sd=sapply(housing.df, sd), min=sapply(housing.df, min), 
  max=sapply(housing.df, max), median=sapply(housing.df, median), 
  length=sapply(housing.df, length)) 
  
  # data.frame(): create data frames, tightly coupled collections of variables which share many of the properties  of matrices and of lists
