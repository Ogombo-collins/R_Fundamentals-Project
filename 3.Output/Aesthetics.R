#Further refine the plot by defining additional aesthetic arguments such as size, color and shape points.

#Set color to green
Ae1 <-scatter <- ggplot(data = data_basketball, aes(x= PointsPerGame, y = AssistPerGame)) +
  geom_point(color = "green")
Ae1

#set shape and size
Ae2 <- ggplot(data = data_basketball, aes(x= PointsPerGame, y = AssistPerGame)) +
  geom_point(shape = "square", size = 4)
Ae2
