library(ggplot2)
library(reshape2)

#Named: ggplot Matrix Base in PDF Output 
#To determine if any of the Remodel Factors have an impact on our dataset we 
#Create a Matrix using ggplot 
cor.mat <- round(cor(WestRoxbury.df), 2)
melted.cor.mat <- melt(cor.mat)
ggplot(melted.cor.mat, aes(x=Var1, y=Var2, fill = value)) + 
  geom_tile() + 
  geom_text(aes(x=Var1, y=Var2, label = value))

----- 
#Named: ggplot Matrix Label Update in PDF Output 
#Improving Correlation Matrix 
#The above Matrix is really hard to read 
#To improve legiability we can change the orientation of the labels on the X axis and update the colors. 

ggplot(data = melted.cor.mat, aes(x=Var1, y=Var2, fill = value)) + 
  geom_tile() + 
  geom_text(aes(x=Var1, y=Var2, label = value)) +
  scale_fill_gradient2(low = "red", high = "darkgreen", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Correlation") +
  theme(axis.text.x = element_text(angle = 45, size = 9, hjust = 1))
  
  ----- 
#Named: ggplot Matrix Select Variables in PDF Output 
#To Make it More legible 
#Narrow Variables Using select() to help narrow down our plot 

summary(WestRoxbury.df)
WestRoxburyRemodel.df <- select(WestRoxbury.df, HomeValue, YrBuilt, 
                              RemodelNone, RemodelOld, RemodelRecent)
head(WestRoxburyRemodel.df)

#Then we create a correlation matrix for the remodel factors

cor.mat.remodel <- round(cor(WestRoxburyRemodel.df), 2)
melted.cor.mat.remodel <- melt(cor.mat.remodel)
ggplot(data = melted.cor.mat.remodel, aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile() + 
  geom_text(aes(x=Var1, y=Var2, label = value)) +
  scale_fill_gradient2(low = "red", high = "darkgreen", mid = "white", 
                       midpoint = 0, limit = c(-1,1), space = "Lab", 
                       name="Correlation") +
  theme(axis.text.x = element_text(angle = 45, size = 9, hjust = 1))
