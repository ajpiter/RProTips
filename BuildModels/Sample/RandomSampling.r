s <-sample(row.names(dataframe), 5)    #random sample of 5 observations
s                                      #s displays the row numbers randomly selected
dataframe[s,]                          #show the sampled data (s: input of row numbers)
dim(dataframe[s,])                     #dimension of the sampled data
