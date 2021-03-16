# The KNN (K Nearest Neighbor):

Algorithm identifies k observations that are “similar” or nearest to the new record being predicted and then uses the average response value (regression) or the most common class (classification) of those k observations as the predicted output. 

- Supervised Machine Learning: Requires Training & Testing dataset 
- Used to solve both classification and regression problems

## KNN Distance Measures
Distance measures determine similarity between observations. 

1. **Euclidean Distance:** Measures distance based on a stright line, using the shortest path between two observations. 
- Most common distance measure 
- More sensitive to outliers
- Computing is computationally slower than Manhattan as it requires square roots

2. **Manhattan Distance:** Measures distance based on point to point travel time (city-block)
- Used in One Hot Encoding 0/1 indicator variables
- Computing is computationally faster as it only requires additions and subtractions

## Steps Involved in performing KNN algorithm:** (Skand, 2017)

1. Data Collection.
2. Preparing and exploring the data.
- Understanding data structure.
- Feature selection (if required)
- Data normalization.
- Creating Training and Test data set.
3. Training a model on data.
- Deciding K 
4. Evaluate the model performance.
5. Improve the performance of model.

Note: The K-nearest neighbor algorithm is different than k-mean algorithm. K-mean is used for clustering and is a unsupervised learning algorithm whereas KNN is supervised leaning algorithm that works on classification problems (Sirohi, 2019).
