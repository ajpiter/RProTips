## Welch Test 

Used if the hypothesis of equal variances is rejected from a One-Way or Two-Way Anova. Note that the Welch test does not require homogeneity of the variances, but the distributions should still follow approximately a normal distribution. If the data does not meet the requirements of the assumptions of normality or homoscedasticity of the variances use a Kruskal-Wallis test.   

### R-Code

oneway.test(variable ~ group, var.equal = FALSE)
