#This was an in class example from QMB-6930

#Scraping a website data table 
library(rvest)
webpage <- "http://www.usa.com/rank/florida-state--land-area--county-rank.htm"
read_html(webpage)

url <- webpage
pageobj <- read_html(url, as.data.frame=T, stringsAsFactors = TRUE)
pageobj %>%  
  html_nodes("table") %>% 
#Here, we indicate that this is the table we want to extract.
  .[[2]] %>%
  html_table(fill=T) -> x

#Update Column and Row labels 
coltitle <- as.character(x[1,]) # read the column names from row 1
colnames(x) <- coltitle # add the column names to x
x <- x[-1,-1] # remove the first row and the 1st column of the data
landarea <- as.data.frame(x)
colnames(landarea) <- c("SQMiles", "County") #Label the column variables 

#Create a backup file just in case
landarea2 <- landarea
landarea <- landarea2

#Clean the data 
#this removes \\ and sq mi from the column SQMiles
landarea$SQMiles <- as.numeric((gsub("[\\$, sq mi]", "", landarea$SQMiles))) 

#Remove Spaces, 'FL' and / from the column Admin2
landarea$Admin2 = as.character(gsub(", FL /", "", landarea$Admin2))

#Removes , and space from column Admin2
landarea$Admin2 = as.character(gsub(",", "", landarea$Admin2))

landarea$Admin2 = as.character(gsub(" [0-9]", "", landarea$Admin2))
#Removes numbers from Admin2 
landarea$Admin2 = as.character(gsub("[0-9]", "", landarea$Admin2))

#updates county names, which is often needed to join datasets 
landarea$Admin2[landarea$Admin2 == "Saint Johns"] <-"St. Johns"
landarea$Admin2[landarea$Admin2 == "Saint Lucie"] <-"St. Lucie"
landarea$Admin2[landarea$Admin2 == "De Soto"] <-"DeSoto"

#View cleaned dataset to check your work
View(landarea)
