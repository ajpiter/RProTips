#Pairs that have a very strong (positive or negative) correlation contain a lot of overlap 
#in information and are good candidates for data reduction by removing one of the variables.

#Multicollinearity(presence of two or more predictors sharing the same linear relationship with the outcome variable) should be avoided

#table 
corr<-round(cor(housing.df),2)

#Heatmap
install.packages("ggcorrplot")
library(ggcorrplot)
ggcorrplot(corr, type = "lower", lab = TRUE)
ggcorrplot(corr, type = “full", lab = TRUE)

# ggcorrplot(): a graphical display of a correlation matrix using ggplot2
# type: "full" (default), "lower" or "upper" display
# lab: If TRUE, add correlation coefficient on the plot
