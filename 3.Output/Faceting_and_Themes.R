#Faceting crates multiple sub_plots that each display one subset of data.
#facet_wrap() facets single variable of data

 ggplot(data = data_basketball, aes(x= PointsPerGame, y = RebPerGame)) +
  geom_point()+
  facet_wrap(~Position)
#facting based on column or columns depicted by a vector
 facet1 <- ggplot(data = data_basketball, aes(x= PointsPerGame, y = RebPerGame)) +
   geom_point()+
   facet_wrap(c("Position", "Country"))
facet1 

#----Themes-----
Themes1 <- ggplot(data = data_basketball, aes(x= PointsPerGame, y = ThreePtPerGame)) +
  geom_point(aes(color = Country, position = "jitters"))+
  geom_smooth(se = FALSE)
Themes1

#Apply a light theme to change appearance of the plot
Themes1 +
  theme_dark()
