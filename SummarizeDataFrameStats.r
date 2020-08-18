#Another way to Summarize Data in First Column
#This method is useful if your target or predictor variable in column 1 
dataframe.df$TOTAL_VALUE                   #Shows entire 1st column 
dataframe.df$TOTAL_VALUE[1:10]             #Shows 1st 10 rows of 1st column 
length(dataframe.df$TOTAL_VALUE)           #Counts number of rows
mean(dataframe.df$TOTAL_VALUE)             #Mean of of the first column 

#Another way to Summarize Data by Selecting Column 
dataframe[which.min(dataframe$columnname), ] #Min Value by column name 
dataframe[which.max(dataframe$columnname), ] #Max Value by column name 
dataframe[length(dataframe$Columnname), ]    #Length of specific column 
dataframe[mean(dataframe$Columnname), ]      #Mean of specific column

#DataCamp Use Case Example 

# Finish the read.delim() call
hotdogs <- read.delim("hotdogs.txt", header = FALSE, col.names = c("type", "calories", "sodium"))
# Select the hot dog with the least calories: lily
lily <- hotdogs[which.min(hotdogs$calories), ]
# Select the observation with the most sodium: tom
tom <- hotdogs[which.max(hotdogs$sodium), ]
# Print lily and tom
lily
tom
