#subset a dataset based on a single category
NewDataSet <- subset(data, data$variable=="Category") 

#subset a dataset based on two categories 
NewDataSet <- subset(data, data$variable=="Category" & data$variable2=="Category") 

#In this example we are subsetting a dataset based state
FLdata <- subset(data, data$Country=="US" & mydata$State=="Florida")
View(FLdata)
