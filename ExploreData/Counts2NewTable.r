
#Name: Count the Instances of Each Level of a Factor Variable
data <-read.csv("datafile.csv")
table(data$FactorVariable)
#35 neighborhoods have a CHAS value of “1,” i.e. they border the Charles River

-----
#Name: count number periods by PrimaryKey in period60
SubsetData <- subset(Data, VariableSubset == 60)
JoinData <- left_join(SubsetData, Data, by = "PriamryKey")

NewTable <- JoinData %>%
  group_by(PrimaryKey) %>%
  count(PrimaryKey)

# show the count of PrimaryKey by the number of periods open
ggplot(NewTable, aes(n))+ geom_bar()
