# Pairs that have a very strong (positive or negative) correlation contain a lot of overlap 
# in information and are good candidates for data reduction by removing one of the variables.

# Multicollinearity, the presence of two or more predictors sharing the same linear relationship with the outcome variable, should be avoided

----- #Correlation Matrix ----- 
#Convert Data Frame to a Matrix 
VucevicMatrix <- model.matrix(~ 0 + DoubleDouble + Opponent, data = Vucevic)

#Create teh Matrix 
cor.mat <- round(cor(VucevicMatrix), 2)
melted.cor.mat <- melt(cor.mat)

#Use ggplot2 to visualize the Correlation Matrix 
ggplot(melted.cor.mat, aes(x=Var1, y=Var2, fill = value)) + 
  geom_tile() + 
  geom_text(aes(x=Var1, y=Var2, label = " ")) +
  scale_fill_gradient2(low = "darkred", high = "darkgreen", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Correlation") +
  theme(axis.text.x = element_text(angle = 45, size = 9, hjust = 1))


----- #Create a Heatmap using ggcorrplot ----- 
library(ggcorrplot)

#table 
corr<-round(cor(housing.df),2)

#Heatmap
ggcorrplot(corr, type = "lower", lab = TRUE)
ggcorrplot(corr, type = “full", lab = TRUE)

# ggcorrplot(): a graphical display of a correlation matrix using ggplot2
# type: "full" (default), "lower" or "upper" display
# lab: If TRUE, add correlation coefficient on the plot
