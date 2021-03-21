# Durbin-Watson Test: 

Detects the presence of autocorrelation in the residuals of a regression and confirms that there is there is no correlation between the residuals, e.g. the residuals are independent.

While tested on regression, we can use it on the data in our ANOVA model to further confirm the data is randomly selected and data in one group is independent of data in another group use the Durbin-Watson test.  

- Null Hypothesis H0: Autocorrelation coefficient = 0 OR There is no correlation among the residuals.
- Alternative Hypothesis H1: Autocorrelation coefficient ≠ 0 OR The residuals are autocorrelated.

Step One: Fit a Linear Regression Model 

#load dataset

dataframe <- 

#fit regression model

model <- lm(DependentVariable ~ IndependentVariable + IndependentVariable2, data=dataframe)

### Learning Resources 
[1] Zach. 2020, April. How to Perform a Durbin-Watson Test in R. Statology. https://www.statology.org/durbin-watson-test-r/
