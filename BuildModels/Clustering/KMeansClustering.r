#Based off practice problems in Business Intelligence with R, Chapter 15 


#Non-Hierarchical Clustering
#k-means clustering (k-clusters selection)--less computationally intensive and thus preferred clustering method for large datasets 

#load data
utilities.df <- read.csv("Utilities.csv")

# set row names to the 1st column Company (i.e., 1st column becomes row names)
row.names(utilities.df) <- utilities.df[,1]

# To compute distance, remove the 1st column (1st column named "company" is removed)
utilities.df <- utilities.df[,-1]
View(utilities.df) #check your work 

#Create a new datatable with normalized input variables
utilities.df.norm <- sapply(utilities.df, scale)
# add row names: utilities company names, which was in the first column and removed above)
row.names(utilities.df.norm) <- row.names(utilities.df) 

##### Run k-means algorithm #####
km <- kmeans(utilities.df.norm, 6)
km

# show cluster membership
km$cluster

# show cluster centroids of each cluster (each cluster's vector of variable means)
km$centers
# show within-cluster sum of squares
km$withinss
# show size of each cluster (# of members)
km$size

##### Scatterplot Visualization #####
#plot an empty scatter plot
plot(c(0), xaxt = 'n', ylab = "", type = "l", ylim =c(min(km$centers), max(km$centers)), xlim = c(0, 8))
# label x-axes
axis(1, at = c(1:8), labels = names(utilities.df))
# plot centroids
for (i in c(1:6))
  lines(km$centers[i,], lty = i, lwd = 2, col = ifelse(i %in% c(1, 3, 5),"black", "dark grey"))
# name clusters
text(x = 0.5, y = km$centers[, 1])
