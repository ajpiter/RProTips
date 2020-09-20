#Creating Numeric Variables 
#Before we start with ggplot2 it is helpful to convert character data to numeric variables

```{r}
class(WestRoxbury.df) 
summary(WestRoxbury.df) #Remodel is the only a character 
class(WestRoxbury.df$REMODEL) #another way to see remodel is a character 
head(WestRoxbury.df)

#We could either convert Remodel or delete it. 
#Example of Converting Remodel in WestRoxbury.df 
WestRoxbury.df$Remodel <- as.factor(WestRoxbury.df$Remodel) #converts to factor
class(WestRoxbury.df$REMODEL) #facor
levels(WestRoxbury.df$REMODEL) # None, Old, Recent

#Once a factor, we convert the .df to a matrix to seperate the factor into indivdual columns 
names(WestRoxbury.df)
WestRoxbury.df <- model.matrix(~ 0 + HomeValue + HomeTax + +YrBuilt + LivingArea + PricePerSqFt + TaxPerSqFt +
                                 LotSqft + PricePerLotSqFt + TaxPerLotSqFt + Floors + TotalRooms + 
                                 + Bedrooms + FullBaths + HalfBaths + Fireplace + Remodel, 
                               data = WestRoxbury.df)

#view(WestRoxbury.df) #Check your work 
head(WestRoxbury.df) #REMODEL has been split into 3 columns
class(WestRoxbury.df) #matrix 

#Then convert the matrix back to ta dataframe 
WestRoxbury.df <- as.data.frame(WestRoxbury.df)
