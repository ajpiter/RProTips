**Gapminder Tidyverse Example**

## Example based off the Data Camp Intro to Tidy Verse Course
### Final Graph is my own based on course concepts 

![image](https://user-images.githubusercontent.com/28680575/104088949-9b2d1000-5238-11eb-8aa6-0399b72b32c3.png)


library(gapminder)
library(tidyverse)
library(dplyr)
library(ggplot2)


# Look at the gapminder dataset

gapminder

----- #Filter in Tidy Verse -----

#filter for one year 

gapminder2007 <- gapminder %>% 
  filter(year == 2007)

#filter for one country 

gapminderUS <- gapminder %>%  
  filter(country == "United States")

#filter for both year and country 

gapminderUS2007 <- gapminder %>%  
  filter(year == 2007, country == "United States")

----- #Arrange in Tidy Verse -----

#sort by column gdpPercap

gapminder <- gapminder %>% 
  arrange(gdpPercap)

#sort in decsending order 

gapminder <- gapminder %>%  
  arrange(desc(gdpPercap))

#Filter and Arrange 

gapminder2007 <- gapminder %>%  
  filter(year == 2007) %>%  
  arrange(desc(gdpPercap))

#Mutate to create a new variable 

gapminder %>%  
  mutate(gdp = gdpPercap * pop)

#mutate to update the values of an existing variable 

gapminder %>%  
  mutate(pop = pop / 1000000)

#Multiple tidy verbs 

gapminder2007 <- gapminder %>% 
  mutate(gdp = gdpPercap * pop) %>%
  filter(year == 2007) %>% 
  arrange(desc(gdp))

----- #Scatter Plot -----

ggplot(gapminder2007, aes(x = gdpPercap, y = lifeExp)) +  geom_point()

![image](https://user-images.githubusercontent.com/28680575/104087177-ce1cd700-522b-11eb-836c-d6d421346d08.png)

#Scatter Plot Log Scale 

ggplot(gapminder2007, aes(x = gdpPercap, y = lifeExp, color = continent, size = pop)) +  
  geom_point() +  
  scale_x_log10()

![image](https://user-images.githubusercontent.com/28680575/104087279-8e0a2400-522c-11eb-9194-daeafcf88a0d.png)

#Series of Scatter Plots

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point() + 
  scale_x_log10() + 
  facet_wrap(~ year)

![image](https://user-images.githubusercontent.com/28680575/104087373-39b37400-522d-11eb-9c48-3dc93eff00e3.png)

----- #Summarise -----

SummaryTable2007 <- gapminder %>% 
  filter(year == 2007) %>% 
  summarize(meanLifeExp = mean(lifeExp), totalPop = sum(as.numeric(pop)))

SummaryTable <- gapminder %>% 
  group_by(year) %>% 
  summarize(meanLifeExp = mean(lifeExp), totalPop = sum(as.numeric(pop)))

SummaryTable2007 <- gapminder %>% 
  filter(year == 2007) %>% 
  group_by(continent) %>% 
  summarize(meanLifeExp = mean(lifeExp), totalPop = sum(as.numeric(pop)))

----- #Change in Global Life Expectancy -----

Year <- gapminder %>%
  group_by(year, country, continent) %>% 
  summarize(totalPop = sum(as.numeric(pop)), meanLifeExp = mean(lifeExp))

ggplot(Year, aes(x = year, y = meanLifeExp, color = continent)) + 
  geom_jitter() + 
  ggtitle("Change in Global Life Expectancy") +
  xlab("1950 through 2007") +
  ylab("Mean Life Expectancy") + 
  facet_grid(~ continent) +
  theme_classic() +
  theme(axis.text.x = element_blank(), axis.ticks = element_blank(), 
        axis.line = element_line(linetype = "blank")) +
  scale_y_continuous(breaks=seq(20,80,10))

![image](https://user-images.githubusercontent.com/28680575/104088949-9b2d1000-5238-11eb-8aa6-0399b72b32c3.png)
            
