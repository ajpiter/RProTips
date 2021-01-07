Pro-tip Comes From Stack Overflow: https://stackoverflow.com/questions/23518605/add-an-index-numeric-id-column-to-large-data-frame/23518737

#To add a column indexing the rows in a data table 
data$ID <- seq.int(nrow(data))

#If you are already using library(tidyverse), you can use
data <- tibble::rowid_to_column(data, "ID")
