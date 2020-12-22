#histogram example from Data Analysis with R 3.2 
> hist(BostonHousing.df$MEDV, xlab = "MEDV")
![image](https://user-images.githubusercontent.com/28680575/102855570-e222a500-43f2-11eb-9c4b-74b0888411f5.png)


#Histogram using ggplot instead, where you can customize the binwidth
> ggplot(BostonHousing.df) + geom_histogram(aes(x = MEDV), binwidth = 5)
