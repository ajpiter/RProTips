#DataCamp Examples

#CSV Example 
# Load the readr package
library(readr)
# Import potatoes.csv with read_csv(): potatoes
potatoes <- read_csv("potatoes.csv")


#TXT Example, specifing Column Names 
library(readr) 
# Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")
# Import potatoes.txt: potatoes
potatoes <- read_tsv("potatoes.txt", col_names = properties)
# Call head() on potatoes
head(potatoes)
