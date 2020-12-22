#Example modeled off Practical Statistics with R, page 39
#Density Diagram differs from a Histogram as the y-axis is calculated based on percentages

DataFile$YEAR <- as.numeric(DataFile$EMP_ACTIVE_YEAR)
hist(DataFile[["YEAR"]], freq=FALSE, xlab = "Year", ylab = "Percent")
lines(density(DataFile[["YEAR"]]), lwd=3, col="blue")

![image](https://user-images.githubusercontent.com/28680575/102853693-cb7a4f00-43ee-11eb-8492-275607ad24cb.png)
