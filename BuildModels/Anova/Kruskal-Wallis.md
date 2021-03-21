# Kruskal-Wallis Model 

A Kruskal-Wallis Model measures the variance in levels of a categorical variable based on a continuous quantitative variable using MEDIANS when the normality test has failed even after transformation attempts for an ANVOA model. 
Before using the Kruskal-Wallis Model attempt to transform data using either a logarithmic transformation, square root transformation, or **Box-Cox transformation**. 

## Requirements for Kruskal-Wallis Model 
1. **Dependent Variable:** Continuous Quantitative Variable 
2. **Independent Variable:** Categorical Variable with 2+ Levels 

## R-Code 

kruskal.test(variable ~ group, data = dataframe) 
