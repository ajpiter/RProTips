# library section
library(dplyr)
library(rvest)

# Let's create a new table getting other data - land area
WebpageUnemploymentMetro <- "https://www.bls.gov/web/metro/laummtrk.htm"
read_html(WebpageUnemploymentMetro)

UrlUnemplymentMetro <- WebpageUnemploymentMetro
pageobj <- read_html(UrlUnemplymentMetro, as.data.frame=T, stringsAsFactors = TRUE)
pageobj %>%  
  html_nodes("table") %>% 
  #Here, we indicate that this is the table we want to extract.
  .[[2]] %>%
  html_table(fill=T) -> landarea #this save the table as landarea which is a mistake 

#Table Cleanup 
UnemplymentMetro.df <- landarea
rm(landarea) # Remove the wrong name table 
head(UnemplymentMetro.df) #There are 3 columns that need to be cleaned up 
UnemploymentMetro2.df <- UnemplymentMetro.df #Make a backup just in case 

# work necessary to join the tables
coltitle <- c("MetroArea", "%Unemployed", "Rank") #Update Column Names 
colnames(UnemplymentMetro.df) <- coltitle #Add the column names to Table
UnemplymentMetro.df <- UnemplymentMetro.df[-1, -3] #Remove uneeded Rows, Columns
UnemplymentMetro.df <- UnemplymentMetro.df[-1, ] #Remove one last Row
head(UnemplymentMetro.df) #Check your work 

#fix the MetroArea Column 
help(gsub)
UnemplymentMetro.df$MetroArea = as.character(gsub(",", "", UnemplymentMetro.df$MetroArea)) #eliminates comma
UnemplymentMetro.df$MetroArea = as.character(gsub("Metropolitan Statistical Area", "", UnemplymentMetro.df$MetroArea))
head(UnemplymentMetro.df)

#Questions for Hoover 
#1. Is there an easy way to remove the states abbreviations from the MetroArea column?
UnemplymentMetro.df$MetroArea = as.character(gsub("UT-ID", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("UT", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("ID", "", UnemplymentMetro.df$MetroArea))
head(UnemplymentMetro.df) #appears that the state abbrevation has been removed. But it's only for 2 of the 50 states. 

#2 Is there a way to split by space dileminator? So City is in one column and State Abbreviation is in another?
#By using deliminators and splitting columns the state info could be saved if needed 

#I went ahead and removed all 50 states the long way 
# find a list of state abreviations
stateabr <- read.csv("https://raw.githubusercontent.com/jasonong/List-of-US-States/master/states.csv")
stateabr <- as.array(stateabr$Abbreviation)
for(i in stateabr){
  UnemplymentMetro.df$MetroArea = as.character(gsub(i, "", UnemplymentMetro.df$MetroArea))
}
# get rid of " -" at the end
UnemplymentMetro.df$MetroArea = as.character(gsub(" -", "", UnemplymentMetro.df$MetroArea))
# get rid of rows 390, 391 at the end
UnemplymentMetro.df <- UnemplymentMetro.df[-c(390:391),]

# % unemployed needs to be coerced to a numeric
UnemplymentMetro.df$`%Unemployed`<- as.numeric(UnemplymentMetro.df$`%Unemployed`)

# get rid of the "--" at the end
UnemplymentMetro.df$MetroArea = as.character(gsub("--", "", UnemplymentMetro.df$MetroArea))

# get rid of " Metropolitan A"
UnemplymentMetro.df$MetroArea = as.character(gsub(" Metropolitan A", "", UnemplymentMetro.df$MetroArea))

# remove the "-" at the end of some lines 
# function
textfield <- UnemplymentMetro.df$MetroArea
UnemplymentMetro.df$MetroArea <- sub("-$", "", UnemplymentMetro.df$MetroArea)




UnemplymentMetro.df$MetroArea = as.character(gsub("AL", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("AK", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("AZ", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("AR", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("CA", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("CO", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("CT", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("DE", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("FL", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("GA", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("HI", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("ID", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("IL", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("IN", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("IA", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("KS", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("KY", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("LA", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("ME", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("MD", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("MA", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("MI", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("MN", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("MS", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("MO", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("MT", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("NE", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("NV", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("NH", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("NJ", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("NM", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("NY", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("NC", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("ND", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("OH", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("OK", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("OR", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("PA", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("RI", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("SC", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("SD", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("TN", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("TX", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("UT", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("VT", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("VA", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("WA", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("WV", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("WI", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("WY", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("DC", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("PR", "", UnemplymentMetro.df$MetroArea))

View(UnemplymentMetro.df)

#Remove DC & PR Codes from MetroArea Column 
UnemplymentMetro.df$MetroArea = as.character(gsub("DC", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("PR", "", UnemplymentMetro.df$MetroArea))

#Remove dashes from Metro Area Column 
UnemplymentMetro.df$MetroArea = as.character(gsub("-", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("--", "", UnemplymentMetro.df$MetroArea))

#Remove Longer Version Names 
UnemplymentMetro.df$MetroArea = as.character(gsub("Clearfield", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Fayette", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("SpringdaleRogers", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("StationBryan", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Onalaska", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Council Bluffs", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Denison", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Neenah", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("California", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Fort Knox", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("North Mankato", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Waynesboro", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Robins", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("/Jefferson County", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Clarke County", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Round Rock", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("ChristiansburgRadford", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("West Des Moines", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Cedar Falls", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Fort Walton BeachDestin", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("IslandBlufftonBeaufort", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Temple", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("West Lafayette", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Richmond County", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("FairhopeFoley", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("ColumbiaTowson", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Opelika", "", UnemplymentMetro.df$MetroArea))#run here
UnemplymentMetro.df$MetroArea = as.character(gsub("Fort WorthArlington", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Martinsburg", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("South Burlington  Metropolitan A", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("CarmelAnderson", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Metropolitan A", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Hoover", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("AuroraLakewood", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Muscle Shoals", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Urbana", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Chapel Hill", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("AndersonMauldin", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("New Braunfels", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("ArlingtonAlexandria", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Goshen", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Bibb County", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Durham  Metropolitan A", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Beloit", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("St. PaulBloomington", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("(1)", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("North Little RockConway", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Wyoming", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("East Lansing", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("WaukeshaWest Allis", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Sandy SpringsRoswell", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Thibodaux", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Ferry PassBrent", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Portage", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Massillon", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("BristolBristol", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Ashland", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("LenoirMorganton", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("MolineRock Island", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Marion", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("North Charleston", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("MelbourneTitusville", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("ConcordGastonia", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("TacomaBellevue", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("VistaDouglas", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("NorfolkNewport News", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("The WoodlandsSugar Land", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("North Port", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Bradenton", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("SunnyvaleSanta Clara", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Bossier City", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("AnnistonOxford", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Silverdale", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("DavidsonMurfreesboroFranklin", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Vienna", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("South Portland  Metropolitan A", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Benton Harbor", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("ObispoPaso RoblesArroyo Grande ", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Lewiston", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Santa Maria", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("WarrenDearborn", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("West HartfordEast Hartford  Metropolitan A", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Mishawaka", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("St. PetersburgClearwater", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("High Point", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("MesaScottsdale", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("ImmokaleeMarco Island", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Tumwater", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Sebastian", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Daytona BeachOrmond Beach", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("La Porte", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Bend", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("StamfordNorwalk  Metropolitan A", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("ConwayNorth Myrtle Beach", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Fort Myers", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Watsonville", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("OxnardThousand Oaks", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Spokane Valley", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("SchenectadyTroy", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("RosevilleArdenArcade", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Elyria", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Carlisle", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("WarrenBoardman", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Port Arthur", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Metairie", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("NapervilleElgin", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Hanover", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("BiloxiPascagoula", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Anacortes", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Carlsbad", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Fort Drum", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("New LondonWesterly  Metropolitan A", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Vallejo", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("CityKingman", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("EdinburgMission", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Warwick  Metropolitan A", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Corcoran", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Winter Haven", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Fort LauderdaleWest Palm Beach", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("San BernardinoOntario", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("BethlehemEaston", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("CheektowagaNiagara Falls", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("CamdenWilmington", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Bridgeton", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Lodi", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("KissimmeeSanford", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("CambridgeNashua  Metropolitan A", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("WilkesBarreHazleton", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("HendersonParadise", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("NewarkJersey City", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Long BeachAnaheim", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Gardner  Metropolitan A", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("WailukuLahaina", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Hammonton", "", UnemplymentMetro.df$MetroArea))
#UnemplymentMetro.df$MetroArea = as.character(gsub("-", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("South Portland", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("West HartfordEast Hartford", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("StamfordNorwalk", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Steubenville", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Richland", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Harlingen", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Berwick", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("VancouverHillsboro", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("OaklandHayward", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Rome", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("New LondonWesterly", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Warwick", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("CambridgeNashua", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Porterville", "", UnemplymentMetro.df$MetroArea))
UnemplymentMetro.df$MetroArea = as.character(gsub("Gardner", "", UnemplymentMetro.df$MetroArea))

View(UnemplymentMetro.df) #Check your work 

#Remove Rows with Null Valus 
#Not working, not sure why. 
UnemplymentMetro.df <- UnemplymentMetro.df[-17, ]
UnemplymentMetro.df <- UnemplymentMetro.df[-27,] 
UnemplymentMetro.df <- UnemplymentMetro.df[-310, ] 
UnemplymentMetro.df <- UnemplymentMetro.df[-392:392, ] 
UnemplymentMetro.df <- UnemplymentMetro.df[-90, ] 

