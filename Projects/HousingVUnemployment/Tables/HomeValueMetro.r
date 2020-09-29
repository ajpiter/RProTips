#The original file was from Zillow https://www.zillow.com/research/data/

#To save the dataset as an object, I used the following code:
HomeValuesMetro.df <- read.csv("Zillow Home Values Metro.csv", header = TRUE) 
View(HomeValuesMetro.df)

HomeValuesMetro2.df <- HomeValuesMetro.df #backup Table 
head(HomeValuesMetro.df)

#Remove Unessary Rows, and Columns [Column, Row]
HomeValuesMetro.df<- HomeValuesMetro.df[-1,]
HomeValuesMetro.df<- HomeValuesMetro.df[,-1]
HomeValuesMetro.df<- HomeValuesMetro.df[,-1]
HomeValuesMetro.df<- HomeValuesMetro.df[,-2]

#Rename Columns 
library(dplyr)
HomeValuesMetro.df <- rename(HomeValuesMetro.df, MetroArea = RegionName)

#Clean Up Metro Area Column
HomeValuesMetro.df$MetroArea = as.character(gsub(",", "", HomeValuesMetro.df$MetroArea)) #eliminates comma

#I went ahead and removed all 50 states the long way 
HomeValuesMetro.df$MetroArea = as.character(gsub("AL", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("AK", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("AZ", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("AR", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("CA", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("CO", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("CT", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("DE", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("FL", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("GA", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("HI", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("ID", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("IL", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("IN", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("IA", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("KS", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("KY", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("LA", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("ME", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("MD", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("MA", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("MI", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("MN", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("MS", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("MO", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("MT", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("NE", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("NV", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("NH", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("NJ", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("NM", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("NY", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("NC", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("ND", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("OH", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("OK", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("OR", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("PA", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("RI", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("SC", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("SD", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("TN", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("TX", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("UT", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("VT", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("VA", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("WA", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("WV", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("WI", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("WY", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("DC", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("PR", "", HomeValuesMetro.df$MetroArea))

View(UnemplymentMetro.df)

#Remove DC & PR Codes from MetroArea Column 
HomeValuesMetro.df$MetroArea = as.character(gsub("DC", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("PR", "", HomeValuesMetro.df$MetroArea))

#Clean Up Metro Area Column
HomeValuesMetro.df$MetroArea = as.character(gsub("-Long Beach-Anaheim", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("-Fort Lauderdale", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("-St Paul ", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("-Jefferson County", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("Urban", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("North Port-", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("-Bradenton", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("Santa Maria-", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("Crestview-", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("-Destin", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("-Bibb County", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("-Urbana", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("-West Lafayette", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("California-", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("-Southern Pines", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("-Pendleton", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("-Marshfield", "", HomeValuesMetro.df$MetroArea))
HomeValuesMetro.df$MetroArea = as.character(gsub("-Winfield", "", HomeValuesMetro.df$MetroArea))

names(HomeValuesMetro.df)

coltitle <- c("MetroArea","StateName","1996.01.31","1996.02.29","1996.03.31",
              "1996.04.30","1996.05.31","1996.06.30","1996.07.31","1996.08.31",
              "1996.09.30","1996.10.31","1996.11.30","1996.12.31","1997.01.31",
              "1997.02.28","1997.03.31","1997.04.30","1997.05.31","1997.06.30",
              "1997.07.31","1997.08.31","1997.09.30","1997.10.31","1997.11.30",
              "1997.12.31","1998.01.31","1998.02.28","1998.03.31","1998.04.30",
              "1998.05.31","1998.06.30","1998.07.31","1998.08.31","1998.09.30",
              "1998.10.31","1998.11.30","1998.12.31","1999.01.31","1999.02.28",
              "1999.03.31","1999.04.30","1999.05.31","1999.06.30","1999.07.31",
              "1999.08.31","1999.09.30","1999.10.31","1999.11.30","1999.12.31",
              "2000.01.31","2000.02.29","2000.03.31","2000.04.30","2000.05.31",
              "2000.06.30","2000.07.31","2000.08.31","2000.09.30","2000.10.31",
              "2000.11.30","2000.12.31","2001.01.31","2001.02.28","2001.03.31",
              "2001.04.30","2001.05.31","2001.06.30","2001.07.31","2001.08.31",
              "2001.09.30","2001.10.31","2001.11.30","2001.12.31","2002.01.31",
              "2002.02.28","2002.03.31","2002.04.30","2002.05.31","2002.06.30",
              "2002.07.31","2002.08.31","2002.09.30","2002.10.31","2002.11.30",
              "2002.12.31","2003.01.31","2003.02.28","2003.03.31","2003.04.30",
              "2003.05.31","2003.06.30","2003.07.31","2003.08.31","2003.09.30",
              "2003.10.31","2003.11.30","2003.12.31","2004.01.31","2004.02.29",
              "2004.03.31","2004.04.30","2004.05.31","2004.06.30","2004.07.31",
              "2004.08.31","2004.09.30","2004.10.31","2004.11.30","2004.12.31",
              "2005.01.31","2005.02.28","2005.03.31","2005.04.30","2005.05.31",
              "2005.06.30","2005.07.31","2005.08.31","2005.09.30","2005.10.31",
              "2005.11.30","2005.12.31","2006.01.31","2006.02.28","2006.03.31",
              "2006.04.30","2006.05.31","2006.06.30","2006.07.31","2006.08.31",
              "2006.09.30","2006.10.31","2006.11.30","2006.12.31","2007.01.31",
              "2007.02.28","2007.03.31","2007.04.30","2007.05.31","2007.06.30",
              "2007.07.31","2007.08.31","2007.09.30","2007.10.31","2007.11.30",
              "2007.12.31","2008.01.31","2008.02.29","2008.03.31","2008.04.30",
              "2008.05.31","2008.06.30","2008.07.31","2008.08.31","2008.09.30",
              "2008.10.31","2008.11.30","2008.12.31","2009.01.31","2009.02.28",
              "2009.03.31","2009.04.30","2009.05.31","2009.06.30","2009.07.31",
              "2009.08.31","2009.09.30","2009.10.31","2009.11.30","2009.12.31",
              "2010.01.31","2010.02.28","2010.03.31","2010.04.30","2010.05.31",
              "2010.06.30","2010.07.31","2010.08.31","2010.09.30","2010.10.31",
              "2010.11.30","2010.12.31","2011.01.31","2011.02.28","2011.03.31",
              "2011.04.30","2011.05.31","2011.06.30","2011.07.31","2011.08.31",
              "2011.09.30","2011.10.31","2011.11.30","2011.12.31","2012.01.31",
              "2012.02.29","2012.03.31","2012.04.30","2012.05.31","2012.06.30",
              "2012.07.31","2012.08.31","2012.09.30","2012.10.31","2012.11.30",
              "2012.12.31","2013.01.31","2013.02.28","2013.03.31","2013.04.30",
              "2013.05.31","2013.06.30","2013.07.31","2013.08.31","2013.09.30",
              "2013.10.31","2013.11.30","2013.12.31","2014.01.31","2014.02.28",
              "2014.03.31","2014.04.30","2014.05.31","2014.06.30","2014.07.31",
              "2014.08.31","2014.09.30","2014.10.31","2014.11.30","2014.12.31",
              "2015.01.31","2015.02.28","2015.03.31","2015.04.30","2015.05.31",
              "2015.06.30","2015.07.31","2015.08.31","2015.09.30","2015.10.31",
              "2015.11.30","2015.12.31","2016.01.31","2016.02.29","2016.03.31",
              "2016.04.30","2016.05.31","2016.06.30","2016.07.31","2016.08.31",
              "2016.09.30","2016.10.31","2016.11.30","2016.12.31","2017.01.31",
              "2017.02.28","2017.03.31","2017.04.30","2017.05.31","2017.06.30",
              "2017.07.31","2017.08.31","2017.09.30","2017.10.31","2017.11.30",
              "2017.12.31","2018.01.31","2018.02.28","2018.03.31","2018.04.30",
              "2018.05.31","2018.06.30","2018.07.31","2018.08.31","2018.09.30",
              "2018.10.31","2018.11.30","2018.12.31","2019.01.31","2019.02.28",
              "2019.03.31","2019.04.30","2019.05.31","2019.06.30","2019.07.31",
              "2019.08.31","2019.09.30","2019.10.31","2019.11.30","2019.12.31",
              "2020.01.31","2020.02.29","2020.03.31","2020.04.30","2020.05.31",
              "2020.06.30","2020.07.31","2020.08.31")
colnames(HomeValuesMetro.df) <- coltitle  

HomeValues20192020.df <- HomeValuesMetro.df[,-3:-278]
head(HomeValues20192020.df)

UnemplyHomeValueAntiJoin <- dplyr::anti_join(UnemplymentMetro.df, HomeValues20192020.df, by="MetroArea")
#shows 387 

HomeValues20192020.df$MetroArea = as.character(gsub(" ", "", HomeValues20192020.df$MetroArea))
UnemplyHomeValueAntiJoin <- dplyr::anti_join(UnemplymentMetro.df, HomeValues20192020.df, by="MetroArea")
#shows 386 

UnemplymentMetro.df$MetroArea = as.character(gsub(" ", "", UnemplymentMetro.df$MetroArea))
UnemplyHomeValueAntiJoin <- dplyr::anti_join(UnemplymentMetro.df, HomeValues20192020.df, by="MetroArea")
#shows 31 

UnemplymentMetro.df$MetroArea = as.character(gsub("HiltonHead", "Hilton Head", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("DoverDurham", "Durham", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("St.Louis()", "St.Louis", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("WinstonSalem", "Winston Salem", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("PalmBay", "Palm Bay", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("UrbanHonolulu", "Honolulu", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("NewBedford", "New Bedford", UnemplymentMetro.df$MetroArea))

UnemplyHomeValueAntiJoin <- dplyr::anti_join(UnemplymentMetro.df, HomeValues20192020.df, by="MetroArea")


