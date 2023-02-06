library(dplyr)


dplyr::filter()
View(data_stores)

#Selecting specific columns in a dataset
data_stores %>% 
  select(StoreID, Store_Sales)

#if we want to pull all values of a given column as a vector ,we would use pull()
data_stores %>% 
  pull(Daily_Customer_Count)

#Filter columns based on defined criteria
# --Filter stores with sales > 100,000
filter(data_stores, Store_Sales >= 100000)

data_stores %>% 
  filter(Daily_Customer_Count >= 800 | Store_Sales >= 500000)
#Slice function; select rows based on  position of rows
data_stores %>% 
  slice(1,30)

#Combining slice() and filter()
data_stores %>% 
  slice(1:30) %>% 
  filter(Items_Available < 2000)

data_stores %>% 
  slice(1:25) %>% 
  filter(Store_Sales < 50000)

#Adding new columns using mutate()
#mutate() allows us create new columns by applying vectorized functions.
Average_sales_per_customer <- data_stores %>% 
  mutate(average_sales_per_customer= Store_Sales/Daily_Customer_Count)
Average_sales_per_customer

#combining mutate(0) with other functions when creating columns
Store_volume <- data_stores %>% 
  mutate(Store_volume = case_when(
    Daily_Customer_Count >= 1000 ~ "Large",
    Daily_Customer_Count >= 500 & Daily_Customer_Count < 1000 ~ "Medium",
    TRUE ~ "Small"
  ))  #love the case_when function;similar to one in SQL
Store_volume

#combining mutate() with arrange function after creating anew column
Sales_Rank <-data_stores %>% 
  mutate(Sales_Rank = dense_rank(-Store_Sales)) %>% 
  arrange(Sales_Rank)
Sales_Rank
#In a nutshell, using the mutate() we have created three columns: Average_sales_per customer, Store_sales and Sales_rank
data_stores