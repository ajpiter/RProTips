#There are multiple packages for exporting data to an Excel file. 

library(openxlsx) #saves Excel files without Java Dependencies 
setwd("/Users/UserName/Documents/Folder/Subfolder")
openxlsx::write.xlsx(Data, file = "ExcelFileName.xlsx")

library(xlsx) #saves Excel files, needs Java 
setwd("/Users/UserName/Documents/Folder/Subfolder")
write.xlsx(Data, file = "ExcelFileName.xlsx")

##### Export XLSX with today's date appended file name #####
setwd("/Users/UserName/Documents/Folder/Subfolder")
library(openxlsx)
SysDate <- Sys.Date()
OutputFile <- paste0(SysDate,"DiversityRatios.xlsx")
openxlsx::write.xlsx(DiversityRatios, file = OutputFile, keepNA = TRUE, 
                     overwrite = FALSE)

#library(xlsx)
#write.xlsx(DiversityRatios, file = OutputFile) #uses xlsx package, has Java dependendies 
