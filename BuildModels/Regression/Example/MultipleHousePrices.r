#Import Files
HouseTransactions <- file
HouseProperties <- file

#Create Linear Model using all possible variables 
HouseModel <- lm(HouseTransactions$Transaction_Price~HouseTransactions$bedrooms+
                HouseTransactions$bathrooms+HouseTransactions$sqft_living+
                HouseTransactions$sqft_lot+HouseTransactions$condition+
                HouseTransactions$grade+HouseTransactions$yr_built)
summary(HouseModel)

#Model formula TransactionPrice = -4421000 + 7211(bedrooms) – 393.3(bathrooms) +62.61(sqft_living) 
#+ 3.628(sqft_lot) + 14180(condition) + 95290(grade) + 2075(yr_built) 

#Predict the price of HouseProperties 
HouseProperties$PredictPrice <- with(HouseProperties, -4412000 +
                                       (7211* HouseProperties$bedrooms) - 
                                       (393.3* HouseProperties$bathrooms) +
                                       (62.61* HouseProperties$sqft_living) + 
                                       (3.628* HouseProperties$sqft_lot) + 
                                       (14180* HouseProperties$condition) + 
                                       (95290* HouseProperties$grade) +
                                       (2075* HouseProperties$yr_built))

#Difference in Asking Price and Predicted Price 
#A negative Price Difference indicates the asking price is lower than the predicted price
HouseProperties$PriceDiffernece <- with(HouseProperties, HouseProperties$Asked_price - 
                                          HouseProperties$PredictPrice)

#The company wants to know if a predicted price is 12% higher than asking price 
#First calculate the value of 112% of asking price 
HouseProperties$AboveAsking12per <- with(HouseProperties, HouseProperties$Asked_price + 
                                           (.12 *HouseProperties$Asked_price))

#Difference in Asking Price and 112% of Predicted Price 
#A negatve price difference indicates the asking price is lower than the 112% predicted price 
HouseProperties$PriceDiffernece12per <- with(HouseProperties, HouseProperties$PredictPrice - 
                                          HouseProperties$AboveAsking12per)

#Create a binary indicator to buy the property based on the model 
HouseProperties$AdviseBuy <- HouseProperties$PriceDiffernece12per > 0

#should we build a better model?
#Model 1 p-value: < 2.2e-16
#Model 1 adjusted r^2 .7193 

#Check for correlation 
cor(HouseTransactions, use="all.obs", method="pearson")
#bathrooms is moderately correlated to sgft_living. Sqft_living is a significant variable
#bathrooms is a good candidate to remove from model

#Build 2nd model taking out one variable at a time (remove bathrooms)
HouseModel2 <- lm(HouseTransactions$Transaction_Price~HouseTransactions$bedrooms+
                    HouseTransactions$sqft_living+
                    HouseTransactions$sqft_lot+HouseTransactions$condition+
                    HouseTransactions$grade+HouseTransactions$yr_built)
summary(HouseModel2)
#Model 2 p-value: < 2.2e-16
#Model 2 adjusted r^2 .7219
#model 2 has the same p-value but more variables are significant and a higher adjusted r-squared 
#sqft_living, sgft_lot, grade are significant. 
#The intercept and yr_built would be significant if looking at .10 significant rate. 

#Build 2nd model taking out one variable at a time (remove bedrooms)
HouseModel2 <- lm(HouseTransactions$Transaction_Price~HouseTransactions$sqft_living+
                    HouseTransactions$sqft_lot+HouseTransactions$condition+
                    HouseTransactions$grade+HouseTransactions$yr_built)
summary(HouseModel2)
#Model2 p-value: < 2.2e-16 remains the same 
#Model2 adjusted r^2 .724 very slight increase 
#indivdual variables significance levels contuine to increase

#Build 2nd model taking out one variable at a time (remove condition)
HouseModel2 <- lm(HouseTransactions$Transaction_Price~HouseTransactions$sqft_living+
                    HouseTransactions$sqft_lot+
                    HouseTransactions$grade+HouseTransactions$yr_built)
summary(HouseModel2)
#Model 2 p-value: < 2.2e-16 remains the same
#adjusted r^2 .725 very slight increase 
#slight increase in indivdual p-values 

#Build 2nd model taking out one variable at a time (remove year built)
HouseModel2 <- lm(HouseTransactions$Transaction_Price~HouseTransactions$sqft_living+
                    HouseTransactions$sqft_lot+
                    HouseTransactions$grade)
summary(HouseModel2)
#Model 2 p-value: < 2.2e-16 remains the same
#adjusted r^2 .7214 decrease 
#all indivdual p-values are significant to a 99% confidence level 

#revert back to previous model with highest adjusted r-squared 
HouseModel2 <- lm(HouseTransactions$Transaction_Price~HouseTransactions$sqft_living+
                    HouseTransactions$sqft_lot+
                    HouseTransactions$grade+HouseTransactions$yr_built)
summary(HouseModel2)

#Model2 formula
HouseProperties$PredictPrice2 <- with(HouseProperties, -3729000 + 
                        (65166 *HouseProperties$sqft_living) + 
                        (3.629 *HouseProperties$sqft_lot) + 
                        (95620 *HouseProperties$grade) + 
                        (1759 *HouseProperties$yr_built))

#Difference in Asking Price and 112% of Model 2 Predicted Price 
#A negatve price difference indicates the asking price is lower than the 112% predicted price 
HouseProperties$PriceDiffernece12per2 <- with(HouseProperties, HouseProperties$PredictPrice2 - 
                                               HouseProperties$AboveAsking12per)

#Create a binary indicator to buy the property based on the model 
HouseProperties$AdviseBuy2 <- HouseProperties$PriceDiffernece12per > 0

#Model 2 advises the company to buy properities listings 12, 15, 16 and 18. 
#The results of Model 1 and Model 2 in terms of which houses to buy were indetical. 
