#deeplyr Verb 5 group_by() applies a grouping for which operations will be preformed 

WR1QRemodelGroup <- group_by(WestRoxbury1Q.df, RemodelNone)
head(WR1QRemodelGroup) #don't freak out that it dosen't look like anything 

WR1QBedroomsGroup <- group_by(WestRoxbury1Q.df, Bedrooms)
head(WR1QBedroomsGroup)

#a group_by() is like a placeholder to preform other operations
#the most common being summarise()
