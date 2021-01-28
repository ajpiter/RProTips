#A scatterplot matrix is helpful to show comparisons of multiple variables 

#load Library 
library(car) # used to make a scatterplot matrix

#create a matrix                    
scatterplotMatrix(~VariableX +VariableX2 +VariableX3 + VariableXi | VariableY, 
                  data= Data, main = "Title of Scatterplot") 

scatterplotMatrix(~PTS +TRB +AST | Player, data=PG, main = "Magic PG Stats", diagonal = FALSE, id=TRUE, smooth=list(method=gamLine)) 

![image](https://user-images.githubusercontent.com/28680575/106130378-4261e080-612f-11eb-822a-228cb01977b6.png)

