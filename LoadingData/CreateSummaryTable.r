#This creates a table by grouping like variables together 

#For example if you had a dataset of transaction with each purchase on a different line you could groupby Customer 
NewTable <- data %>%
  group_by(VariableCustomer) %>%
  summarize(NewVariableTotalPurchases = sum(VariablePurchases))

-----
#Name: Count Variable by VariableTime
# count the number of observations per period
NewTable <- data %>%
  group_by(NewVariableTime) %>%
  count("OldVariableTime")

# graph of the number of observations per period
ggplot(NewTable, aes(NewVariableTime, n))+
  geom_point()

-----
#Name: Count Instances of Unique Primary Key 
# collect the number of unique Primary Key in the dataset
PrimaryKey <- (unique(data$PrimaryKey))
NewTable <- as.data.frame(PrimaryKey, col.names="PrimaryKey")
remove(PrimaryKey)

# count the number of observations per unique primary key
NewVariable <- data %>%
  group_by(PrimaryKey) %>%
  count(PrimaryKey)

# add the number of observations to the new_df
NewTable$NewVariable <- NewVariable$n

-----
#Name: Count Binary Variable by Primary Key 

NewVariable <- aggregate(data$VariableBinary, by=list(data$PrimaryKey), FUN = max)
# add the new variable which represents the count of how many times the binary variable equaled 1 for each unique primary key 
NewTable$NewVariable <- NewVariable$x

# change the new variable to a factor
NewTable$NewVariable <- as.factor(NewTable$NewVariable)

# illustrate the number of 1's in the NewVariable field of the NewTable
ggplot(NewTable, aes(NewVariable)) +
  geom_bar()

# illustrate the number of 1's in the default_time field of the old dataset
ggplot(data, aes(NewVariable)) +
  geom_bar()

-----
#Name: lists the last instance in time for each primary key
LastVariable <- aggregate(data$timeVariable, by=list(data$PriamryKey), FUN = max)
NewTable$LastVariable <- LastVariable$x

# illustrate the last period by customer across all customers
ggplot(NewTable, aes(LastVariable)) +
  geom_bar()
