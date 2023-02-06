#Tidy Select allows us select columns systematically with supporting functions
#This helps us future-proof our code as it reduces hard coded columns

data_stores %>% 
  select(everything())
#The above tidy select function;everything() returns all columns in our dataset

data_stores %>% 
  select(last_col())

data_basketball %>% 
  select(everything())

data_basketball %>% 
  select(starts_with("T"))

data_stores %>% 
  select(contains("store"))
