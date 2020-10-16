#Categorical to Factor 
#Don't forget to drop one of the dummy results

install.packages("dummies") # need to install packages, named dummies
library(dummies)# call the package 

housing.df<-dummy.data.frame(housing.df, sep= ".")# create dummies in housing.df
housing.df<-housing.df[, 1:15]]# remove16th column, keeping only 1st -15th
