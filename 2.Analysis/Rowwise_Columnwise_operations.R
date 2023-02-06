#Rowwise functions allow us execute functions row by row within a tibble

df1 %>% 
  mutate(average_lenght = mean(c(length, length2)))
#The above average_length is incorrect as it is not rowwise

df1 %>%
  rowwise() %>% 
  mutate(average_lenght = mean(c(length, length2)))

df1 %>% 
  rowwise() %>% 
  summarise(total_length = sum(c(length, length2)))

#For columnwise functions and operations, we use across()
data_stores %>% 
  group_by(DistrictID) %>% 
  summarize(across(Store_Sales:Store_Area,sum))
