#paste() and paste0() are the two most common functions for editing string names

-----
#Name: Paste0() joins strings without spaces 
paste0("butter", "fly") 
[1] "butterfly"

#paste() and paste0() can join multiple data types 
y2k <- paste0("NYE", "2000") 
y2k #prints the variable 
[1] "NYE2000"

-----
#paste() adds a space between each 
paste("butter", "fly") 
[1] "butter fly" 

#use argumenet sep = "" to remove space 
paste("butter", "", "fly") 
[1] "butterfly" 
