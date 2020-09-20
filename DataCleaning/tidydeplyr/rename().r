library(dplyr)
#rename(data, New Name = Old Name)

#rename Total Value to reflect it is in thousands 
WestRoxbury.df<- rename(WestRoxbury.df, HomeValueThousands = TOTAL.VALUE)
#view(WestRoxbury.df)

#rename columns to follow CamelBack my preferred naming convention
head(WestRoxbury.df) 
WestRoxbury.df <- rename(WestRoxbury.df, HomeTax = TAX)
WestRoxbury.df <- rename(WestRoxbury.df, LotSqft = LOT.SQFT)

#you can rename more than one column at once 
WestRoxbury.df <- rename(WestRoxbury.df, YrBuilt = YR.BUILT, GrossArea = GROSS.AREA, LivingArea = LIVING.AREA, 
                         Floors = FLOORS, TotalRooms = ROOMS, Bedrooms = BEDROOMS, FullBaths = FULL.BATH, 
                         HalfBaths = HALF.BATH)
#view(WestRoxbury.df) #check your work 

#missed a few 
WestRoxbury.df <- rename(WestRoxbury.df, Kitchen = KITCHEN, Fireplace = FIREPLACE, Remodel =REMODEL)
head(WestRoxbury.df)
