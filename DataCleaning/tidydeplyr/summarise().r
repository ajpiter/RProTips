#deplyr Verb 4, summarise() is used to aggregate multiple values together and provide them to a function as a single result

summarise(WestRoxbury1Q.df, HomeValueMean = mean(HomeValue))
#Many simple summarise() math functions can be seen using summary() 
#summarise() is useful after preforming group_by() so we will return later

#Functions you can use for summarizing
#mean
#sum
#median
#min
#max

-----

#to summarise(groupbyfunction, tibllecolumnname = mathfunction(columnname))

#To show the mean home value via the remodel status in the lower quartile
summarise(WR1QBedroomsGroup, HomeValueMean = mean(HomeValue))

#Within summarise() you can show multiple math functions
summarise(WR1QBedroomsGroup, HomeValueMean = mean(HomeValue), HomeValueMedian = median(HomeValue), 
          HomeValueSd = sd(HomeValue), HomeValueInnerQuartile = IQR(HomeValue), HomeValueMin = min(HomeValue), 
          HomeValueMax = max(HomeValue))

#Not always best to put all math functions in the same tibble 
#interquartile range alone 
summarise(WR1QBedroomsGroup, HomeValueQuartile = quantile(HomeValue))

#interquartile range added to above makes it diffcult to quickly read
summarise(WR1QBedroomsGroup, HomeValueMean = mean(HomeValue), HomeValueMedian = median(HomeValue), 
          HomeValueSd = sd(HomeValue), HomeValueInnerQuartile = IQR(HomeValue), HomeValueMin = min(HomeValue), 
          HomeValueMax = max(HomeValue), HomeValueQuartile = quantile(HomeValue))

#Save the easier to read tibble 
WR1QSummaryBedroom.tb <- summarise(WR1QBedroomsGroup, HomeValueMean = mean(HomeValue), HomeValueMedian =
                                      median(HomeValue), HomeValueSd = sd(HomeValue), HomeValueInnerQuartile =
                                      IQR(HomeValue), HomeValueMin = min(HomeValue), HomeValueMax =
                                      max(HomeValue))
-----

#Not all functions allow you to list the column 
#n() is used for the count of bedrooms 
summarise(WR1QBedroomsGroup, BedroomsCount = n())

#n_distinct() shows the number of district HomeValues per Bedrooms 
summarise(WR1QBedroomsGroup, BedroomsDistinct = n_distinct(HomeValue))

#By adding them to the same tibble you can see there is a unique home value for every 1 bedroom home
summarise(WR1QBedroomsGroup, BedroomsCount = n(), BedroomsDistinct = n_distinct(HomeValue))

#You can also preform math within a summarise()
WR1QBedroomsUniqueValue.tb <- summarise(WR1QBedroomsGroup, BedroomsCount = n(), BedroomsDistinct = n_distinct(HomeValue), 
          BedroomsSharedValues = BedroomsCount - BedroomsDistinct)
