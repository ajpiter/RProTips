# Build Models 

Before you can begin to create models you need to understand what models are available and which work best for which problems. We will divide the model types into ANOVAs, Supervised Learning, and Unsupervised Learning.  

## ANOVA 
ANOVAs compares different levels of a categorical variable based on a continuous quantative variable. 

#### Types of ANOVA Models 
- **One Way ANOVA:** The standard ANOVA model 
- **Two Way ANOVA:** 
- **Kruskal-Wallis**: Use when data does not follow a normal distribution (fails either the Shapiro-Wilk Test or Kolmogorov-Smirnov Test). Kriskal-Wallis compares levels of categorical variables with a continuous quantative variable based on MEDIANS. 
- **Repeated Measures ANOVA:** Use when data between levels of your categorical variable is not independent. This most often occurs when measuring a metric before, durning and after something. Think medical treatment or marketing campaign.

#### Testing ANOVAs 
- **Shapiro-Wilk:** Most common test for normalitiy between levels of categorical data in an ANOVA. 
- **Kolmogorov-Smirnov:** Alternative test for normality between levels of categorical data in an ANOVA. 

## Types of Machine Learning Models 

There have been many books written on supervised vs. unsupervised machine learning models, and at somepoint I should probably add my notes to reference later. For now the best quick explination is the visual below. 

![image](https://user-images.githubusercontent.com/28680575/105462091-26a49900-5c5c-11eb-9b0a-3bc20e23d08c.png)
**Source** Machine Learning Design Patterns: Solutions t… by Robinson, Sara, Munn, Michael
https://www.amazon.com/dp/B08L8GRRBM/?coliid=I3GAGHP2RNWM6Q&colid=J71FGVZU2MCC&psc=0&ref_=lv_ov_lig_dp_it

## Supervised Learning 

### Linear Networks (Most Common) 
- **Regression:** Regression models predict continous outcome based on continous values 

### Decision Tress 

### Neural Networks (Excluding Linear) 
#### Recurrent Neural Networks 
#### Conditional Neural Networks 
#### Dense Neural Networks 

### Support Vector Machines 

## Unsupervised Learning 

### Clustering 
#### K-Means Clustering (Most Common) 

## Learning Resources 
(Model Specific Learning Resources are Listed on Indivdual Github Pages) 

1. **Practical Statistics for Data Science:** Almost an entire book devoted to regression and linear modeling. Covers concepts you forgot from stats class and how to implement in R or Python. From correlation, to sampling to accessing the model and cross validation. 
https://www.amazon.com/dp/B08712TT3F/?coliid=I1QFDAWSRQ1J9M&colid=J71FGVZU2MCC&psc=0&ref_=lv_ov_lig_dp_it_im

#### Density Based Special Clustering with Noise (DBSCAN) 

### Dimensionality Reduction 

#### Principal Component Analysis (PCA) 

### Associate Rule Learning 

