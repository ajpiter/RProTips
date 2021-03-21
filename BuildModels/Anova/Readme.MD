# Anovas

Anovas are used to test if there’s a difference between groups. Two common types of Anovas are: 
- **One Way Anova:** Compares impact of one independent categorical variable on a numeric outcome
- **Two Way Anova:** Compares impact of two independent categorical variables on a numeric outcome 

## One Way Anovas

A one way ANOVA is used to compare two means from two independent (unrelated) groups using the F-distribution. 
- **Null Hypothsis:** That the two means are equal and there is no difference between Groups 
- **Significant Result:** If the two means are unequal.

Example Leg Strength According to Weight 
- **Independent Variable:** Leg Strength 
- **Dependent Group:** Weight
- **Dependent Levels:** Underweight, Average Weight, Overweight 

Limits & Further Testing
- **Limits:** F-Statistic will tell you at least two groups were different from each other. But it won’t tell you which groups were different. 
- **Further Test:** Least significant difference to show which groups had different means 

## Two Way Anovas 

Example Leg Strength According to Weight & Age Group 
- **Independent Variable:** Leg Strength 
- **Dependent Group:** Weight
- **Dependent Levels:** Underweight, Average Weight, Overweight 
- **Dependent Group2:** Age Group 
- **Depedent Levels2:** Children, Teens, Adults, Seniors 

## Testing Anovas

When working with Anovas the following tests should be used
- **Tukeys:** 
- **Kruskall Wallace:** Medians 
- **Randomization Tests:** 

## Learing Resources 

**Towards Data Science Article: ANOVA in R** 
- https://towardsdatascience.com/anova-in-r-4a4a4edc9448
- Better Explination from coding to interperting the results 
- Answers the WHY 

**Textbook: Practical Statistics for Data Scientist** 
- Chapter 2, Section Anova Page 138 to 152. 
- Decent explination of testing 
