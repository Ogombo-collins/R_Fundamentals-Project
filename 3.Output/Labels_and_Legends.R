#Labels and Legends

plot_base <- ggplot(data = data_basketball, aes(x = PointsPerGame, y = ThreePtPerGame)) +
  geom_point(aes(color = Country, position = "jitter"))+
  geom_smooth(se = FALSE)
#labs () is used to label different elements of the plot
plot_base +
  labs(x ="PPG",
       y = "3ptg")

#We can also add title, sub_tittle and caption to our visual
plot_base +
  labs(x ="PPG",
       y = "3ptg",
       title = "PPG vs 3ptg",
       subtitle = "Basketball",
       caption = "Relationship between points and 3 pointers")

#Legends:Give us information about our plot
plot_base +
  labs(x ="PPG",
       y = "3ptg",
       title = "PPG vs 3ptg",
       subtitle = "Basketball",
       caption = "Relationship between points and 3 pointers") +
  theme(legend.position = "right") +
  guides(colour = guide_legend(nrow = 2, override.aes = list(size=10)))
