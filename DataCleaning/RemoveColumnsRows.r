#Remove Unessary Rows, and Columns [Row, Column]
HomeInventoryMetro.df<- HomeInventoryMetro.df[-1,] #row
HomeInventoryMetro.df<- HomeInventoryMetro.df[,-1:-2]#columns
HomeInventoryMetro.df<- HomeInventoryMetro.df[,-2] #columns
