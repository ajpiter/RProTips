#Use ggplot cheat sheet to creat alternative bar plots
#https://rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf

install.packages("ggplot2") 
library(ggplot2)

ggplot(2020F.exe2a) + 
  geom_bar(aes(y=Price,x=as.factor(CD_Player)),stat = "summary",fun.y = "mean", fill = "maroon",width=0.5) + 
  labs(y="Price (Euros)", x="CD Player")

ggplot(2020F.exe2a) + 
  geom_bar(aes(y=Price,x=as.factor(Fuel_Type.CNG)),stat = "summary",fun.y = "mean", fill = "maroon",width=0.5) + 
  labs(y="Price (Euros)", x="Fuel_Type:CNG")

ggplot(2020F.exe1a) + 
  geom_bar(aes(y=Price,x=as.factor(Fuel_Type)),stat = "summary",fun.y = "mean", fill = "maroon",width=0.5) + 
  labs(y="Price (Euros)", x="Fuel_Type")
