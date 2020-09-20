#mutate()

#Used to add or alter columns through a calculation or operation on exisiting columns 
#mutate(dataset, newcolumname = oldcolname / # 

#Use Mutate to calculate the home value in single dollars vs thousands
WestRoxbury.df <- mutate(WestRoxbury.df, HomeValue = WestRoxbury.df$HomeValueThousands * 1000)

#Use Mutate to calculate the price per sq foot 
WestRoxbury.df <- mutate(WestRoxbury.df, PricePerSqFt = WestRoxbury.df$HomeValue / WestRoxbury.df$LivingArea)
WestRoxbury.df <- mutate(WestRoxbury.df, TaxPerSqFt = WestRoxbury.df$HomeTax / WestRoxbury.df$LivingArea)
WestRoxbury.df <- mutate(WestRoxbury.df, PricePerLotSqFt = WestRoxbury.df$HomeValue / WestRoxbury.df$LotSqft)
WestRoxbury.df <- mutate(WestRoxbury.df, TaxPerLotSqFt = WestRoxbury.df$HomeTax / WestRoxbury.df$LotSqft)
#view(WestRoxbury.df) #Check your work 
head(WestRoxbury.df) #check your work 

#The West Roxbury Dataset comes from the book Data Mining with R 
https://www.amazon.com/Data-Mining-Business-Analytics-Applications/dp/1118879368/ref=sr_1_5?crid=3QDQHRXIMR085&dchild=1&keywords=data+analytics+with+R&qid=1600629281&sprefix=Data+ANa%2Caps%2C165&sr=8-5
