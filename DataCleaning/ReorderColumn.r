#Example: http://www.sthda.com/english/wiki/reordering-data-frame-columns-in-r

col_order <- c("Species", "Petal.Width", "Sepal.Length",
               "Sepal.Width", "Petal.Length")
my_data2 <- my_data[, col_order]
my_data2
