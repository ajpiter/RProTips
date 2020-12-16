#Create a Categorical Variable 
data$NewCategory <- ifelse(data$variable <= 0.01, "Low", ifelse(data$variable > 0.01 & data$variable <= 0.025,
                                                     "Med", "High"))
                                                     
-----                                                  
#Another method to create Categorical Variable
data$NewVariable <- NA
NewVariable <- data$OldVariable
NewVariable <- ifelse(NewVariable <= 0.01, "Low", ifelse(NewVariable > 0.01 & NewVariable <= 0.025,
                                                     "Med", "High"))
NewVariable
data$NewVariable <- cbind(NewVariable)

-----
#Using dplyr function mutate and piping 
library(dplyr) 
data$newvariable <- NA
data$newvariable
data <- data %>% mutate(newvariable = case_when(oldvariable <=0.01 ~"Low",
                                        oldvariable >0.01 & oldvariable <= 0.025 ~ "Med",
                                        oldvariable > 0.025 ~ "High"))
data$newvariable #check your work 
summary(data) #check your work 
