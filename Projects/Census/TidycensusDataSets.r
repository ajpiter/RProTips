#The Tidycensus package in R is a useful tool for mainpulating Census data using the Census API
#Without knowing which datasets are available in the tidycensus package, you will run across numerous error messages 
#Below are the functions to create datatables in R for each of the available Census datasets that list the variables available 

#Once you know which tables are available you can pull entire tables in R using the following example 

# Load the tidycensus package into your R session
library(tidycensus)
library(tidyverse) 
FLIncome <- get_acs(geography = "county", state = "FL", table = "B19001")
                    

----- # Define your Census API key and set it with census_api_key() ----- 
api_key <- "#####"
census_api_key(api_key, install = TRUE)
readRenviron("~/.Renviron")
Sys.getenv("CENSUS_API_KEY") # Check your API key

----- #Create Tables of Available Variables in TidyCensus Package ----- 
#The main decial Census data 'sf1' is available for 2000 and 2010 data 
Census2000 <- load_variables(year = 2000,
                             dataset = "sf1",
                             cache = TRUE)

Census2010 <- load_variables(year = 2010,
                             dataset = "sf1",
                             cache = TRUE)

#"sf3" dataset is only available for 2000, but more descriptive than "sf1"
CensusSample2000 <- load_variables(year = 2000,
                             dataset = "sf3",
                             cache = TRUE)

#For Yearly ACS summary data begins in 2005 and ends in 2019
ACS12005 <- load_variables(year = 2005,
                           dataset = "acs1",
                           cache = FALSE)

ACS12019 <- load_variables(year = 2019,
                           dataset = "acs1",
                           cache = FALSE)

#For ACS 3 Year Averages 
#2005-2007 is the first 3 year ACS data is available in tidycensus 
ACS32007 <- load_variables(year = 2007,
                           dataset = "acs3",
                           cache = FALSE)

#2010-2013 is the last year 3 year ACS data is available in tidycensus 
ACS32013 <- load_variables(year = 2013,
                           dataset = "acs3",
                           cache = FALSE)

#5-year ACS support in tidycensus begins with the 2005-2009 5-year ACS and ends with 2019
ACS52009 <- load_variables(year = 2009,
                           dataset = "acs5",
                           cache = FALSE)

ACS52010 <- load_variables(year = 2010,
                           dataset = "acs5",
                           cache = FALSE)

ACS52019 <- load_variables(year = 2019,
                           dataset = "acs5",
                           cache = FALSE)

-----#Data Profiles -----
#More On Data Profiles: https://censusreporter.org/topics/table-codes/

#Census Data Profiles, where codes being with"D" for the acs1 dataset
ACS1D2005 <- load_variables(year = 2005,
                           dataset = "acs1/profile",
                           cache = FALSE)

ACS1D2006 <- load_variables(year = 2006,
                            dataset = "acs1/profile",
                            cache = FALSE)

ACS1D2019 <- load_variables(year = 2019,
                            dataset = "acs1/profile",
                            cache = FALSE)

#2005-2007 is the first 3 year ACS data is available in tidycensus 
ACS3D2007 <- load_variables(year = 2007,
                           dataset = "acs3/profile",
                           cache = FALSE)

#2010-2013 is the last year 3 year ACS data is available in tidycensus 
ACS3D2013 <- load_variables(year = 2013,
                           dataset = "acs3/profile",
                           cache = FALSE)

#5-year ACS support in tidycensus begins with the 2005-2009 5-year ACS and ends with 2019
ACS5D2009 <- load_variables(year = 2009,
                           dataset = "acs5/profile",
                           cache = FALSE)

ACS5D2010 <- load_variables(year = 2010,
                           dataset = "acs5/profile",
                           cache = FALSE)

ACS5D2019 <- load_variables(year = 2019,
                           dataset = "acs5/profile",
                           cache = FALSE)

-----#Subjects Tables-----
#More On Data Profiles: https://censusreporter.org/topics/table-codes/

#Census Data Profiles, where codes being with"S" for the acs1 dataset
ACS1S2019 <- load_variables(year = 2019,
                            dataset = "acs1/subject",
                            cache = FALSE)

#2010-2013 is the last year 3 year ACS data is available in tidycensus 
ACS3S2013 <- load_variables(year = 2013,
                            dataset = "acs3/subject",
                            cache = FALSE)

#5-year ACS support in tidycensus begins with the 2006-2010 5-year ACS and ends with 2019
ACS5S2010 <- load_variables(year = 2010,
                            dataset = "acs5/subject",
                            cache = FALSE)

ACS5S2019 <- load_variables(year = 2019,
                            dataset = "acs5/subject",
                            cache = FALSE)
