#Example modeled off Practical Statistics with R, page 39
#Density Diagram differs from a Histogram as the y-axis is calculated based on percentages

DataFile$YEAR <- as.numeric(DataFile$EMP_ACTIVE_YEAR)
hist(DataFile[["YEAR"]], freq=FALSE, xlab = "Year", ylab = "Percent", 
     main = "Density Plot of Year", col = "light blue")
lines(density(DataFile[["YEAR"]]), lwd=3, col="blue")

![image](https://user-images.githubusercontent.com/28680575/102854700-0aa99f80-43f1-11eb-8b77-152143fc1160.png)
