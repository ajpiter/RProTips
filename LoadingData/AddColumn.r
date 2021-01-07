Example from Stackoverflow: https://stackoverflow.com/questions/41942080/insert-a-blank-column-in-dataframe

----- #Base R ----- 
#Add a column where all rows have value "NA" 
DataFrame$NewColumnName <- NA 

#Sort columns by name
DataFrame[c("Column1", "Column2", "Column3")]

#Sort rows by values in a specified columns
DataFrame[order(DataFrame$ColumnToSort),] 

----- #Use Dplyr ----- 
library(dplyr)
# Adds after the second column
iris %>% add_column(new_col = NA, .after = 2)
# Adds after a specific column (in this case, after Sepal.Width)
iris %>% add_column(new_col = NA, .after = "Sepal.Width")
