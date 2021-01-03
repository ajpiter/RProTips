#Create TableX by inputing data into two columns 
CarName <- c("Amin", "Jim", "Chris")
HighwaySpeed <- c(66, 68, 74)
TableX <- data.frame(nametab1, heighttab1)

#Create TableY by inputing data into two columns
nametab2 <- c("Amin", "Shawn", "Rich", "Chris")
MaxSpeed <- c(110, 130, 135, 115)
TableY <- data.frame(nametab2, SBP)

colnames(tabX) <- c("CarName", "HighwaySpeed")
colnames(tabY) <- c("CarName", "MaxSpeed")

#Append one table to the bottom of another
rbind(table1, table2) 

#all.x = TRUE is a left merge 
Q1merge <- merge(TableX, TableY, by="Name", all.x = TRUE)

#all.y = TRUE is a right merge
Q2merge <- merge(TableX, TableY, by="Name", all.y = TRUE)

#all = FALSE indicates an inner join and shows all values 
#inner join from SQL is called natural join in R 
Q3merge <- merge(TableX, TableY, by="Name", all = FALSE)

#all=TRUE indicates a full join and shows all values for both sides 
Q4merge <- merge(TableX, TableY, by="Name", all=TRUE)

#dplyrs anti_join() produces the data in X that is not in Y
Q5antijoin <- dplyr::anti_join(TableX, TableY, by="Name")

#dplyrs anti_join() produces the data in Y that are not in X
Q5antijoin <- dplyr::anti_join(TableY, TableX, by="Name")
