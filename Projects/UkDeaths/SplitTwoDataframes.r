#This code analyzes a data set that comes with Base R -  [Seatbelts](https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/Seatbelts). I have reviewed the file and included 2 visualizations. 

#Librarys Included: 

install.packages("tinytex")
install.packages("knitr")
install.packages("rmarkdown")
install.packages("XQuartx")
library(tinytex)
library(knitr)
library(rmarkdown)

update.packages(ask = FALSE, checkBuilt = TRUE)
tinytex::tlmgr_update()Yes
tinytex:::install_prebuilt()

#4-1 were able to identify and load a base R dataset;
#datasets pre-installed in R in package datasets listed in a new tab R data sets

data()
View(Seatbelts)
View(UKDriverDeaths)
help("Seatbelts")
str(Seatbelts)
SeatbeltsDF <- data.frame(Year=floor(time(Seatbelts)),Month=factor(cycle(Seatbelts),
          labels=month.abb), Seatbelts)
View(SeatbeltsDF)

#4-2-2) that you can manipulate the dataset
#create a new column for total deaths 
totalDeaths <- SeatbeltsDF$DriversKilled + SeatbeltsDF$front + SeatbeltsDF$rear
View(totalDeaths)

# add a new column called colname based on the vector of colnames in the myData data frame
SeatbeltsDF$TotalDeaths <- c(totalDeaths)
View(SeatbeltsDF)

# change a single column name
colnames(SeatbeltsDF)[5] <- "FrontKilled"
colnames(SeatbeltsDF)[6] <- "RearKilled"
View(SeatbeltsDF)

#UK seatbelt use was mandated in January 1983 
preSeatbeltLaw <- SeatbeltsDF[1:169, ] #Filters data before seatbelt law 
View(preSeatbeltLaw)
postSeatbeltLaw <- SeatbeltsDF[170:192, ]#Filters data after seatbelt law
View(postSeatbeltLaw)

# summary value calculations within the matrix
AvgDeathsMonth <- mean(SeatbeltsDF$TotalDeaths) # mean of Total Deaths
AvgPreLawDeathsMonth <- mean(preSeatbeltLaw$TotalDeaths) # mean of PreLaw Deaths
AvgPostLawDeathsMonth <- mean(postSeatbeltLaw$TotalDeaths) # mean of PostLaw Deaths
AvgDeathsMonth
AvgPreLawDeathsMonth
AvgPostLawDeathsMonth

#Standard Deviation of Deaths 
SDDeathsMonth <- sd(SeatbeltsDF$TotalDeaths) # mean of Total Deaths
SDPreLawDeathsMonth <- sd(preSeatbeltLaw$TotalDeaths) # mean of PreLaw Deaths
SDPostLawDeathsMonth <- sd(postSeatbeltLaw$TotalDeaths) # mean of PostLaw Deaths
SDDeathsMonth 
SDPreLawDeathsMonth 
SDPostLawDeathsMonth

#Max Deaths Per Month 
MaxDeathsMonth <- max(SeatbeltsDF$TotalDeaths) # max of Total Deaths
MaxPreLawDeathsMonth <- max(preSeatbeltLaw$TotalDeaths) # max of PreLaw Deaths
MaxPostLawDeathsMonth <- max(postSeatbeltLaw$TotalDeaths) # max of PostLaw Deaths
MaxDeathsMonth
MaxPreLawDeathsMonth
MaxPostLawDeathsMonth

#Min Deaths Per Month 
MinDeathsMonth <- min(SeatbeltsDF$TotalDeaths) # min of Total Deaths
MinPreLawDeathsMonth <- min(preSeatbeltLaw$TotalDeaths) # min of PreLaw Deaths
MinPostLawDeathsMonth <- min(postSeatbeltLaw$TotalDeaths) # min of PostLaw Deaths
MinDeathsMonth
MinPreLawDeathsMonth
MinPostLawDeathsMonth

#Start with understanding the data  
class(preSeatbeltLaw)
head(preSeatbeltLaw)
summary(preSeatbeltLaw)
View(preSeatbeltLaw)

class(postSeatbeltLaw)
head(postSeatbeltLaw)
summary(postSeatbeltLaw)
View(postSeatbeltLaw)

help("barplot")

#create colors and names you will need to the visualizations 
#colors() 
ColorsSeason <- c("navy", "navy", "springgreen"
, "springgreen", "springgreen", "yellow", "yellow", "yellow", "darkorange", "darkorange","darkorange", "navy")

barplot(preSeatbeltLaw$TotalDeaths, beside = FALSE,  
        main = "Pre-SeatBelt Law Death Rates in UK",
        xlab = "Over time Grouped by Color per Season",
        ylab = "Total Deaths per Month", col = ColorsSeason)
        
#boxplot examples
#help("boxplot")

boxplotcolor <- c("red", "red", "red", "red", "blue", "blue", "blue", "blue")
boxplotnames <- c("Driver", "Front", "Rear", "Total", "Driver", "Front", "Rear", "Total")
boxplot(preSeatbeltLaw$DriversKilled, preSeatbeltLaw$FrontKilled, preSeatbeltLaw$RearKilled, 
        preSeatbeltLaw$TotalDeaths, postSeatbeltLaw$DriversKilled, postSeatbeltLaw$FrontKilled, 
        postSeatbeltLaw$RearKilled, postSeatbeltLaw$TotalDeaths, main = "Death by Location in Car", 
        xlab = "Location in Car Pre-Law (Red) vs. Post-Law (Blue)", ylab = "Average Deaths per Month", outline = FALSE, 
        col = boxplotcolor, varwidth = TRUE, 
        names = boxplotnames)
