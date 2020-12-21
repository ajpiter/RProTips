#There are multiple packages for exporting data to an Excel file. 

library(openxlsx) #saves Excel files without Java Dependencies 
setwd("/Users/UserName/Documents/Folder/Subfolder")
openxlsx::write.xlsx(Data, file = "ExcelFileName.xlsx")

library(xlsx) #saves Excel files, needs Java 
setwd("/Users/UserName/Documents/Folder/Subfolder")
write.xlsx(Data, file = "ExcelFileName.xlsx")
