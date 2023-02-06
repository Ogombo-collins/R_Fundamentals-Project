#Scales allow us further define the appearance of the plot

plot_scale <- ggplot(data = data_basketball, aes(x = PointsPerGame, y = ThreePtPerGame)) +
  geom_point()

plot_scale +
  scale_x_binned() +
  scale_y_reverse()

diplyr::select()
required(diplyr)
require(dplyr)
view(data_stores)
data_basketaball %>% 
  dplyr::select()

