

## Levene Test

Tests for homoscedasticity (equality of variances) for different groups (levels in categorical variable) ensuring they are equal. Could also use Bartlett's test or a simple boxplot.

### R-Code
library(car) 
leveneTest(variable ~ group)
