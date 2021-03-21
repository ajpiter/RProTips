# ANOVAs

ANOVAs are used to test if there’s a difference between groups. Types of Anovas include:  
- **One-Way Anova:** Compares impact of one independent levels of categorical variable on a numeric outcome using means.  
- **Two-Way Anova:** Compares impact of two independent levels of categorical variables on a numeric outcome using means.  
- **Repeated Measures ANOVA:** Consider if data between groups is not independent. This most often occurs when measuring a metric before, during and after something. Think medical treatment or marketing campaign.

- **Balanced ANOVA:** 
- **Fully Nested ANOVA:** 
- **General Linear ANOVA:** 
- **General MANOVA:** 
- **Mixed Effects ANOVA:**  

If the ANOVAs Model fails a test, consider using one of the following to compare the difference between groups instead: 
- **Kruskall-Wallace Test:** Compares impact of independent levels of categorical variables on a numeric outcome using ranked medians. Does not require homogeneity of the variances or a normal distribution. Use when model fails a Shapiro-Wilk, Kolmogorov-Smirnov, Leverne or Bartlett test of if categorical levels are ranked (ie. Poor, Average, Good, Excellent). 
- **Welch Test:** Use if the hypothesis of equal variances is rejected for a One-Way or Two-Way Anova. Note that the Welch test does not require homogeneity of the variances, but the distributions should still follow approximately a normal distribution.

## Testing Anovas

When working with Anovas the following tests should be utilized. 

- **Bartlett Test:** Tests for homoscedasticity (equality of variances) for different groups (levels in categorical variable) ensuring they are equal. Could also use Levene's test or a simple boxplot. 
- **F-Statistic:** Will tell you at least two groups were different from each other. But it won’t tell you which groups were different for that you need to preform a Least Significant Difference test. 
- **Kolmogorov-Smirnov Test:** Alternative test for normal distribution of data (typically use Shapiro-Wilk). 
- **Least Significant Difference:** Show which groups had different means from other groups. Run if the F-Statistic test showed that at least two groups were different from each other. 
- **Levene Test:** Tests for homoscedasticity (equality of variances) for different groups (levels in categorical variable) ensuring they are equal. Could also use Bartlett's test or a simple boxplot.
- **Shapiro-Wilk Test:** Most Common test for normal distributed of data. 
- **Tukeys:** 

## Learning Resources 

**Towards Data Science Article: ANOVA in R** 
- https://towardsdatascience.com/anova-in-r-4a4a4edc9448
- Better Explination from coding to interperting the results 
- Answers the WHY 
- One Way Anova

**Textbook: Practical Statistics for Data Scientist** 
- Chapter 2, Section Anova Page 138 to 152. 
- Decent explination of testing 
