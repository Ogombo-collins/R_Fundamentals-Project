#Package to be loaded is ggplot2
library(ggplot2)

#Three core facets of plotting data in ggplot2: data, aesthetics and geoms
#Aesthetics involve mapping columns from a dataset to plot attributes(example x and y)
#Geoms define type of plot: scatter, line, bar graph etc
view(data_basketball)

#Build our first visual
ggplot(data = data_basketball, aes(x= PointsPerGame)) +
  geom_bar()

viz_bargraph <- ggplot(data = data_basketball, aes(x= PointsPerGame)) +
  geom_bar()
viz_bargraph

viz_densityplot <- ggplot(data = data_basketball, aes(x= ThreePtPerGame)) +
  geom_density()
viz_densityplot
