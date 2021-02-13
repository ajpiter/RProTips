#Examples from Various Magic Stats Projects 
#Code Above Image

#Vucevic Double Double's by Season 
ggplot(Vucevic[!is.na(Vucevic$DoubleDouble),]) + 
  geom_point(mapping = aes(x=PlayerGameSeason, y=DoubleDouble, color = DoubleDouble)) + 
  facet_grid(Season ~.) +
  ggtitle("Vucevic Double Doubles by Season") + 
  xlab("Vucevic's Game Played in Season") + 
  ylab("Double Double") + 
  theme_minimal() + 
  theme(legend.position = "none")
  
 ![image](https://user-images.githubusercontent.com/28680575/107841149-8d623180-6d86-11eb-94a0-10c93b422645.png)

#Fultz Career Game Score 
ggplot(Fultz, aes(x = PlayerGame, y = GmSc, color = Team)) + 
  geom_point() +
  geom_smooth(se= FALSE) + 
  ggtitle("Fultz Career Game Score") + 
  xlab("Time") + 
  ylab("Game Score") + 
  theme_classic() + 
  theme(axis.text.x = element_blank(), axis.ticks = element_blank(), axis.line = element_line(linetype = "blank"))

![image](https://user-images.githubusercontent.com/28680575/106125608-5ce58b00-612a-11eb-9d28-d593a8f569c2.png)

ggplot(ThomasBreakdown, aes(x = PlayerGame, y = GmSc, color = Team)) + 
  geom_jitter() +
  geom_smooth(se= FALSE) +
  ggtitle("Isaiah Thomas Game Score") + 
  xlab("Games Played") + 
  ylab("Game Score") + 
  theme_classic() + 
  theme(axis.text.x = element_blank(), 
        axis.ticks = element_blank(), 
        axis.line = element_line(linetype = "blank"))
        
![image](https://user-images.githubusercontent.com/28680575/106125900-b3eb6000-612a-11eb-9837-3681cc139245.png)

ggplot(Potential, aes(x = Season, y = PTS)) + 
  geom_jitter() + 
  geom_smooth(se= FALSE) + 
  ggtitle("Potential Point Guard", subtitle= "Veteran Thomas Still Great Option") + 
  xlab("Season") + 
  ylab("Points") + 
  theme_classic() + 
  theme(axis.text.x = element_blank(), 
        axis.ticks = element_blank(), 
        axis.line = element_line(linetype = "blank")) + 
  facet_grid(. ~ Player)
  
![image](https://user-images.githubusercontent.com/28680575/106126006-d67d7900-612a-11eb-82ba-e516f41c7700.png)
 
 ggplot(Anthony2021, aes(x = PlayerGame, y = GmSc)) + 
  geom_jitter() +
  geom_smooth(se= FALSE) +
  ggtitle("Cole Anothony 2020-2021 ") + 
  xlab("Time") + 
  ylab("Game Score") + 
  theme_classic() + 
  theme(axis.text.x = element_blank(), axis.ticks = element_blank(), axis.line = element_line(linetype = "blank"))
  
![image](https://user-images.githubusercontent.com/28680575/106126138-02006380-612b-11eb-9dd2-73a5f0d4a030.png)

ggplot(Magic, aes(x = PlayerGame, y = GmSc, color = Player)) + 
  geom_jitter() + 
  geom_smooth(se= FALSE) + 
  ggtitle("Game Score by Point Guard") + 
  xlab("Games Played") + 
  ylab("Game Score") + 
  theme_classic() + 
  theme(axis.text.x = element_blank(), 
        axis.ticks = element_blank(), 
        axis.line = element_line(linetype = "blank")) + 
  facet_grid(. ~ Player)
  
![image](https://user-images.githubusercontent.com/28680575/106126316-396f1000-612b-11eb-9042-73d8254bdf97.png)

plot <- ggplot(PG, aes(x = Date, y = GmSc, color = Player)) + 
  geom_jitter() + 
  ggtitle("Detailed Game Score by Point Guard") + 
  xlab("From 2017 to 2021") + 
  ylab("") + 
  theme_classic() + 
  theme(axis.text.x = element_blank(), 
        axis.ticks = element_blank(), 
        axis.line = element_line(linetype = "blank"), 
        legend.position = "bottom",
        plot.title = element_text(hjust = 0.5)) 
plot <- plot + scale_color_manual(values=c("royalblue", "lightblue", "#999999"))
plot          
        
![image](https://user-images.githubusercontent.com/28680575/106126460-63283700-612b-11eb-8737-47799fd1e251.png)

plot <- ggplot(PG, aes(x = Date, y = TRB, color = Player)) + 
  geom_point() + 
  geom_smooth(se= FALSE) + 
  ggtitle("Rebounds by Point Guard") + 
  xlab("From 2017 to 2021") + 
  ylab("") + 
  theme_classic() + 
  theme(axis.text.x = element_blank(), 
        axis.ticks = element_blank(), 
        axis.line = element_line(linetype = "blank"), 
        legend.position = "bottom",
        plot.title = element_text(hjust = 0.5))
plot <- plot + scale_color_manual(values=c("royalblue", "lightblue", "#999999"))
plot 

![image](https://user-images.githubusercontent.com/28680575/106126553-7e934200-612b-11eb-99ad-ecf678f9cc7a.png)
