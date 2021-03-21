# ANOVAs

ANOVAs are used to test if there’s a difference between groups. The two most common types of Anovas include:  
- **One-Way ANOVA:** Compares impact of one categorical variable independent levels on a numeric outcome using means.  
- **Two-Way ANOVA:** Compares impact of two categorical variables independent levels on a numeric outcome using means.  

## Creating ANOVA Model: Steps to Follow
**1. Check that your Observations are Independent** Confirm the data is randomly selected and data in one group is independent of data in another group using either method below:
- Verify Based on the Design of the Experiment (Most Common) 
- Durbin-Watson Test 

**2. If Independent, Test the Normality of Residuals Using One of the Methods Below:** 
- Visualization of a Histogram or QQ-plot 
- Shapiro-Wilk Test (Most Common) 
- Kolmogorov-Smirnov Test 

**3. If Normality is Assumed, Test the Homogeneity of the Variances Using One of the Methods Below:** 
- Visually by Comparing the Distribution in a Boxplot or Dotplot
- Levene’s Test
- Bartlett's Test 
**4. Create ANOVA or Subsitute for Another Test to Compare Groups:** 
- If Variances are Equal, use ANOVA
- If Variances are Not Equal, use the Welch Test
- If Normality is Not Assumed, use the Kruskal-Wallis Test
**5. Run Post-Hoc Tests on ANOVA Possibly Including Tests Listed Below:** 
- Tukeys Test (Most Common)
- Dunnett Test
- Pairwise T-Test Comparisions (Holm Method) 

## ANOVA Tests

Summary Descriptions of Possible Tests that Might be Utilized When Working with ANOVAs:  

- **Bartlett Test:** Tests for homoscedasticity (equality of variances) for different groups (levels in categorical variable) ensuring they are equal. Could also use Levene's test or a simple boxplot. 
- **Durbin-Watson:** Tests that the observations are independent. 
- **F-Statistic:** Will tell you at least two groups were different from each other. But it won’t tell you which groups were different for that you need to preform a Least Significant Difference test. 
- **Kolmogorov-Smirnov Test:** Alternative test for normal distribution of data (typically use Shapiro-Wilk). 
- **Least Significant Difference:** Show which groups had different means from other groups. Run if the F-Statistic test showed that at least two groups were different from each other. 
- **Levene Test:** Tests for homoscedasticity (equality of variances) for different groups (levels in categorical variable) ensuring they are equal. Could also use Bartlett's test or a simple boxplot.
- **Shapiro-Wilk Test:** Most Common test for normal distributed of data. 
- **Tukeys:** Used to compare all groups to each other (so all possible comparisons of 2 groups)

## Other Types of ANOVA Models 

If the ANOVAs Model fails a test, consider using one of the following to compare the difference between groups instead: 
- **Kruskall-Wallace Test:** Compares impact of independent levels of categorical variables on a numeric outcome using ranked medians. Does not require homogeneity of the variances or a normal distribution. Use when model fails a Shapiro-Wilk, Kolmogorov-Smirnov, Levene or Bartlett test of if categorical levels are ranked (ie. Poor, Average, Good, Excellent). 
- **Welch Test:** Use if the hypothesis of equal variances is rejected for a One-Way or Two-Way Anova. Note that the Welch test does not require homogeneity of the variances, but the distributions should still follow approximately a normal distribution.

Less Common ANOVA Models: 
- **Balanced ANOVA:** 
- **Fully Nested ANOVA:** 
- **General Linear ANOVA:** 
- **General MANOVA:** 
- **Mixed Effects ANOVA:**  
- **Repeated Measures ANOVA:** Consider if data between groups are not independent. This most often occurs when measuring a metric before, during and after something. Think medical treatment or marketing campaign.

## Learning Resources 

[1] Bruce, Andrew & Bruce, Peter. Practical Statistics for Data Scientist. Page 138 to 152. 
- Decent explination of testing 

[2] Soeteway, Antoine. ANOVA in R. Towards Data Science Article. https://towardsdatascience.com/anova-in-r-4a4a4edc9448
- Walks through testing data in R, deciding which ANOVA tests to preform, and interperting the results.  
