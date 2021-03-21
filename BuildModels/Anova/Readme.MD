# Anovas

Anovas are used to test if there’s a difference between groups. Types of Anovas include:  
- **One Way Anova:** Compares impact of one independent levels of categorical variable on a numeric outcome using means.  
- **Two Way Anova:** Compares impact of two independent levels of categorical variables on a numeric outcome using means.  
- **Kruskall Wallace:** Compares impact of independent levels of categorical variables on a numeric outcome using medians. 
- **Repeated Measures ANOVA:** If data between groups is not independent consider preforming a **Repeated Measures ANOVA**. This most often occurs when measuring a metric before, during and after something. Think medical treatment or marketing campaign.

## One Way Anovas

A one way ANOVA is used to compare two means from an independent (unrelated) groups of a categorical variable using an F-distribution. 
- **Null Hypothsis:** That the means of the groups (levels in categorical variable) are all equal and there is no difference between groups.  
- **Significant Result:** At least one group (a level in a categorical variable) has a mean that is differnet from the means of the other groups. 

Example Leg Strength According to Weight 
- **Independent Variable:** Leg Strength 
- **Dependent Group:** Weight
- **Dependent Levels:** Underweight, Average Weight, Overweight 

Testing
- **F-Statistic:** will tell you at least two groups were different from each other. But it won’t tell you which groups were different. 
- **Least Significant Difference:** to show which groups had different means 

## Two Way Anovas 

Example Leg Strength According to Weight & Age Group 
- **Independent Variable:** Leg Strength 
- **Dependent Group:** Weight
- **Dependent Levels:** Underweight, Average Weight, Overweight 
- **Dependent Group2:** Age Group 
- **Depedent Levels2:** Children, Teens, Adults, Seniors 

## Testing Anovas

When working with Anovas the following tests should be utilized. 

- **F-Statistic:** will tell you at least two groups were different from each other. But it won’t tell you which groups were different for that you need to preform a Least Significant Difference test. 
- **Kolmogorov-Smirnov Test:** Alternative test for normal distribution of data (typically use Shapiro-Wilk). 
- **Least Significant Difference:** Show which groups had different means from other groups. Run if the F-Statistic test showed that at least two groups were different from each other. 
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
