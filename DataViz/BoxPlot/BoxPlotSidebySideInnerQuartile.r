Name: Boxplot Side by Side Inner Quartile Range 
Dataset: West Roxbury Homes

#To create better visualization  
#Manipulate the Dataset to study high-end home values 
#select all homes in the 4th interquartile range for home value 
HomeValue4Q <- WestRoxbury.df$TOTAL.VALUE > 438
HomeValue4Q
#create a new column 
WestRoxbury.df$HomeValue4Q <- c(HomeValue4Q)
View(WestRoxbury.df)

#check for NAs on Total Value and Tax before graph 
is.na(HomeValue4Q)
is.na(WestRoxbury.df$TAX)

#subset the data based on homes with values in the 4th quartile range
WestRoxburyHighEnd.df <- subset(WestRoxbury.df, WestRoxbury.df$HomeValue4Q ==TRUE,
                  select=c(TOTAL.VALUE, TAX, LOT.SQFT, YR.BUILT,
                           GROSS.AREA, LIVING.AREA, FLOORS, ROOMS, 
                           BEDROOMS, FULL.BATH, HALF.BATH, KITCHEN, 
                           FIREPLACE, REMODEL, HomeValue4Q))
View(WestRoxburyHighEnd.df)

boxplot(WestRoxburyHighEnd.df$TOTAL.VALUE ~ WestRoxburyHighEnd.df$BEDROOMS, main = "High End Home Value Compared to Bedrooms",
xlab = "Bedrooms", ylab = "Total Value")

#To understand if bedrooms impacts homes in all price ranges equally 
#create side by side box plots

summary(WestRoxbury.df$TOTAL.VALUE)

#select all homes in the 3rd interquartile range for home value 
HomeValue3Q <- WestRoxbury.df$TOTAL.VALUE > 329 & WestRoxbury.df$TOTAL.VALUE < 438
HomeValue3Q
#create a new column 
WestRoxbury.df$HomeValue3Q <- c(HomeValue3Q)

#select all homes in the 2nd interquartile range for home value 
HomeValue2Q <- WestRoxbury.df$TOTAL.VALUE > 325 & WestRoxbury.df$TOTAL.VALUE < 392
HomeValue2Q
#create a new column 
WestRoxbury.df$HomeValue2Q <- c(HomeValue2Q)

#select all homes in the 1st interquartile range for home value 
HomeValue1Q <- WestRoxbury.df$TOTAL.VALUE > 0 & WestRoxbury.df$TOTAL.VALUE < 325
HomeValue1Q
#create a new column 
WestRoxbury.df$HomeValue1Q <- c(HomeValue1Q)

#View the Dataframe with 4 columns for home value 
View(WestRoxbury.df)

#subset the data based on homes with values in the 1st quartile range
WestRoxburyLowEnd.df <- subset(WestRoxbury.df, WestRoxbury.df$HomeValue1Q ==TRUE,
                                select=c(TOTAL.VALUE, TAX, LOT.SQFT, YR.BUILT,
                                         GROSS.AREA, LIVING.AREA, FLOORS, ROOMS, 
                                         BEDROOMS, FULL.BATH, HALF.BATH, KITCHEN, 
                                         FIREPLACE, REMODEL, HomeValue4Q))
#subset the data based on homes with values in the 1st quartile range
WestRoxburyLowMid.df <- subset(WestRoxbury.df, WestRoxbury.df$HomeValue2Q ==TRUE,
                               select=c(TOTAL.VALUE, TAX, LOT.SQFT, YR.BUILT,
                                        GROSS.AREA, LIVING.AREA, FLOORS, ROOMS, 
                                        BEDROOMS, FULL.BATH, HALF.BATH, KITCHEN, 
                                        FIREPLACE, REMODEL, HomeValue4Q))
#subset the data based on homes with values in the 1st quartile range
WestRoxburyHighMid.df <- subset(WestRoxbury.df, WestRoxbury.df$HomeValue3Q ==TRUE,
                               select=c(TOTAL.VALUE, TAX, LOT.SQFT, YR.BUILT,
                                        GROSS.AREA, LIVING.AREA, FLOORS, ROOMS, 
                                        BEDROOMS, FULL.BATH, HALF.BATH, KITCHEN, 
                                        FIREPLACE, REMODEL, HomeValue4Q))

#side by side box plots 
#use par() to split the plots into panels 
help("par")
par(mfrow = c(2,2))
boxplot(WestRoxburyLowEnd.df$TOTAL.VALUE ~WestRoxburyLowEnd.df$BEDROOMS, main = "Low End Value", 
        xlab="Bedrooms", ylab="HomeValue")
boxplot(WestRoxburyLowMid.df$TOTAL.VALUE ~WestRoxburyLowMid.df$BEDROOMS, main = "Low Mid Value", 
        xlab="Bedrooms", ylab="HomeValue")
boxplot(WestRoxburyHighMid.df$TOTAL.VALUE ~WestRoxburyHighMid.df$BEDROOMS, main = "Mid High Value", 
        xlab="Bedrooms", ylab="HomeValue")
boxplot(WestRoxburyHighEnd.df$TOTAL.VALUE ~ WestRoxburyHighEnd.df$BEDROOMS, main = "High End Value", 
        xlab="Bedrooms", ylab="HomeValue")
