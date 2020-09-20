#Data Mining with R 2.7
#Convert 10 entries for Bedrooms to NA's
#The below example is on a dataset that has 0 NA values, therefore we first converted a sample of the data to NA. 
#Once the values were NA we replaced the NA values with the median. 
#To find NA's in a new dataset run the summary(dataframename.df$ColumnName)

#creates the new value representing 10 sample rows 
> rows.to.missing <- sample(row.names(housing.df), 10)
#replaces the data in column BEDROOMS for the sample "rows.to.missing" with the value NA 
> housing.df[rows.to.missing,]$BEDROOMS <- NA
#prints the results
> summary(housing.df$BEDROOMS)
#Now we have 10 NA's and the median of the remaining values is 3 
 Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   1.00    3.00    3.00    3.23    4.00    9.00      10 
   
#Assign NA values with the median of the remaining value
#use median() with na.rm = TRUE to ignore missing values when computing the median 
housing.df[rows.to.missing,]$BEDROOMS <- median(housing.df$BEDROOMS, na.rm = TRUE) 
summary(housing.df$BEDROOMS)
  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1.00    3.00    3.00    3.23    4.00    9.00 
   
   
#Example of a df where $BEDROOMS has 10 NA values 
> summary(housing.df)
  TOTAL_VALUE          TAX           LOT.SQFT        YR.BUILT      GROSS.AREA    LIVING.AREA  
 Min.   : 105.0   Min.   : 1320   Min.   :  997   Min.   :   0   Min.   : 821   Min.   : 504  
 1st Qu.: 325.1   1st Qu.: 4090   1st Qu.: 4772   1st Qu.:1920   1st Qu.:2347   1st Qu.:1308  
 Median : 375.9   Median : 4728   Median : 5683   Median :1935   Median :2700   Median :1548  
 Mean   : 392.7   Mean   : 4939   Mean   : 6278   Mean   :1937   Mean   :2925   Mean   :1657  
 3rd Qu.: 438.8   3rd Qu.: 5520   3rd Qu.: 7022   3rd Qu.:1955   3rd Qu.:3239   3rd Qu.:1874  
 Max.   :1217.8   Max.   :15319   Max.   :46411   Max.   :2011   Max.   :8154   Max.   :5289  
                                                                                              
     FLOORS          ROOMS           BEDROOMS      FULL.BATH       HALF.BATH         KITCHEN     
 Min.   :1.000   Min.   : 3.000   Min.   :1.00   Min.   :1.000   Min.   :0.0000   Min.   :1.000  
 1st Qu.:1.000   1st Qu.: 6.000   1st Qu.:3.00   1st Qu.:1.000   1st Qu.:0.0000   1st Qu.:1.000  
 Median :2.000   Median : 7.000   Median :3.00   Median :1.000   Median :1.0000   Median :1.000  
 Mean   :1.684   Mean   : 6.995   Mean   :3.23   Mean   :1.297   Mean   :0.6139   Mean   :1.015  
 3rd Qu.:2.000   3rd Qu.: 8.000   3rd Qu.:4.00   3rd Qu.:2.000   3rd Qu.:1.0000   3rd Qu.:1.000  
 Max.   :3.000   Max.   :14.000   Max.   :9.00   Max.   :5.000   Max.   :3.0000   Max.   :2.000  
                                  NA's   :10                                                     
   FIREPLACE        REMODEL    
 Min.   :0.0000   None  :4346  
 1st Qu.:0.0000   Old   : 581  
 Median :1.0000   Recent: 875  
 Mean   :0.7399                
 3rd Qu.:1.0000                
 Max.   :4.0000 
