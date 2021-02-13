## Modeling Process, Sampling 

""" 
- **Vucevic:** Observations of all games played
- **VucevicTrain:**  70% of the observations in the Vucevic dataset
- **VucevicTest:**  30% of the observations in the Vucevic dataset

To provide an accurate understanding of the our final optimal model the **Vucevic** dataframe was split into both a training and testing dataset. The training set will be used to train our algorithms and compare models. The testing set will be reserved to make an unbiased assessment of the model's performance. 

A 70/30% split was used across 627 observations in the original Vucevic dataset. 

A stratified sampling approach was taken to ensure a balanced representation of the response distribution in both the training and testing datasets. In other words we used a similar percent of games where Vucevic scored a Double Double in both the training and testing data. 

The breakdown of Double Double's on the **VucevicTrain** dataset: 
"""

#Stratified resampling using the rsample package 
set.seed(123)
#initate the split of the UnorderFactos dataset, sampling based on the response variable DoubleDouble
VucevicSplit <- initial_split(Vucevic, prob = 0.7, strata = "DoubleDouble")
VucevicTrain <- training(VucevicSplit)
VucevicTest <- testing(VucevicSplit)

#Shows the response (Double Double) ratio for Training and Testing data  
table(VucevicTrain$DoubleDouble) %>% prop.table()

#The breakdown of Double Double's on the **VucevicTest** dataset:
table(VucevicTest$DoubleDouble) %>% prop.table()
