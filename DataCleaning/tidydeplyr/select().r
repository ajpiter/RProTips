#dplyr Verb #2 select()
#select() helps keep only the columns you need and allows you to change the order of the columns 

#we already know we don't need TotalValueThousands since HomeValue represents the same number converted. 
summary(WestRoxbury.df) #use summary to see if there are other values we can eliminate

#Every home has at least one kitchen, and only a very few homes have 2 kitchens
#Since we are going to look at home values in the lower quartile we won't use kitchen 
#We also removed GrossAres since it is redundant 

#Then reordered the columns 
WestRoxbury.df <- select(WestRoxbury.df, HomeValue, HomeTax, YrBuilt, LivingArea, PricePerSqFt, TaxPerSqFt, LotSqft, PricePerLotSqFt, 
       TaxPerLotSqFt, Floors, TotalRooms, Bedrooms, FullBaths, HalfBaths, Fireplace, Remodel)

View(WestRoxbury.df) #check your work 
head(WestRoxbury.df) #check your work 
