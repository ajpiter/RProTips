set.seed(1) # always produce the same samples when rerunning R codes

#Randomly sample 50% of the row IDs for training set
train.rows<-sample(rownames(housing.df), dim(housing.df)[1]*0.5)

#Sample 30% of the row IDs into the validation set from the remaining records
# use setdiff() to find records not already in the training set
valid.rows<-sample(setdiff(rownames(housing.df), train.rows), dim(housing.df)[1]*0.3)

#Assign the remaining 20% row IDs serve as test
test.rows<-setdiff(rownames(housing.df), union(train.rows, valid.rows))

#Create the three data frames by collecting all columns from the appropriate rows 
train.data<-housing.df[train.rows,]
valid.data<-housing.df[valid.rows,]
test.data<-housing.df[test.rows,]

# train.rows, valid.rows, and test.rowsprovide the selected row ids.
# check the size of the partitioned data frames:
dim(housing.data)
dim(train.data)
dim(valid.data)
dim(test.data)
