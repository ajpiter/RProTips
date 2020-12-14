#A scatterplot matrix is helpful to show comparisons of multiple variables 

#load Library 
library(car) # used to make a scatterplot matrix

#create a matrix                    
scatterplotMatrix(~VariableX +VariableX2 +VariableX3 + VariableXi | VariableY, 
                  data= Data, main = "Title of Scatterplot") 
