#A scatterplot matrix is helpful to show comparisons of multiple variables 

#load Library 
library(car) # used to make a scatterplot matrix

#create a matrix                    
scatterplotMatrix(~VariableX +VariableX2 +VariableX3 + VariableXi | VariableY, 
                  data= Data, main = "Title of Scatterplot") 

scatterplotMatrix(~PTS +TRB +AST | Player, data=PG, main = "Magic PG Stats", diagonal = FALSE, id=TRUE, smooth=list(method=gamLine)) 
![image](https://user-images.githubusercontent.com/28680575/106130588-8a810300-612f-11eb-9076-5e01a8cfeaba.png)


