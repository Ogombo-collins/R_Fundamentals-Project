#Summarize & Groupby

summarise(data_stores)
data_stores %>% 
  summarise(mean(Store_Sales))
#first value of a column using summarize()
data_stores %>% 
  summarise(first = first(Store_Sales))
data_stores %>% 
  summarise(second = second(Store_Sales))

#Calculating IQR, Q1, Q2 and Q3
data_stores %>% 
  summarize(IQR =IQR(Store_Sales))

data_stores %>% 
  summarize(Q1 = quantile(Store_Sales, .25))

data_stores %>% 
  summarize(Q2 = quantile(Store_Sales, .50))

data_stores %>% 
  summarize(Q3 = quantile(Store_Sales, .75))
#all stats included in summarize()
data_stores %>% 
  summarise(
    Mean = mean(Store_Sales),
    MAX = max(Store_Sales),
    MIN = min(Store_Sales),
    Standard_deviation = sd(Store_Sales)
  )

#Groubby function allows us to aggregate data within a tibble

data_stores %>% 
  group_by(DistrictID) %>% 
  summarise(sum(Store_Sales))

data_stores %>% 
  filter(Store_Sales >= 100000) %>% 
  group_by(DistrictID) %>% 
  summarise(District_id_Sales = sum(Store_Sales))
#An exercise
data_stores %>% 
  mutate(customer_volume = case_when(
    Daily_Customer_Count >= 600 ~ "High",
    TRUE ~"Low"
  )) %>% 
  group_by(DistrictID,customer_volume) %>% 
  summarize(Average_Sales_District = sum(Store_Sales))

#Nesting Data with nest(). It is similar to groupby, but aggregates data within a tibble
data_stores %>% 
  nest(data = Store_Sales:Store_Area)
