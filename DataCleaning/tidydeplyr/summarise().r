#deplyr Verb 4, summarise() is used to aggregate multiple values together and provide them to a function as a single result

summarise(WestRoxbury1Q.df, HomeValueMean = mean(HomeValue))
#Many simple summarise() math functions can be seen using summary() 
#summarise() is useful after preforming group_by() so we will return later
