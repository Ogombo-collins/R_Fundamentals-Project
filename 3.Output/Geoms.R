#Defining different geoms(type of plots)
ggplot(data = data_basketball, aes(x= RebPerGame)) +
  geom_histogram()

scatter <- ggplot(data = data_basketball, aes(x= PointsPerGame, y = AssistPerGame)) +
  geom_point()

column <- ggplot(data = data_basketball, aes(x= Position, y = PointsPerGame)) +
  geom_col()
column

#Layer Geoms: adding smoothing geom to a geom point(scatter plot)
scatter_plot1 <- ggplot(data = data_basketball, aes(x= PointsPerGame, y = AssistPerGame)) +
  geom_point() +
  geom_smooth()
scatter_plot1
ggsave(filename = "scatter_plot1.png", plot = scatter_plot1, path = "3.Output/")

#Adding more columns in the geoms()
s2 <- ggplot(data = data_basketball, aes(x= Position, y = AssistPerGame)) +
  geom_col(aes(y = StealsPerGame, fill = "purple")) +
  geom_point(color = "green", size = 2, position = "jitter")

s2

ggsave(filename = "s2.png", plot = s2, path = "3.Output/")
