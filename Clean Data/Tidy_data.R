library(purrr)
#STEP 1: Inspect if a column in(Data_split dataset) has missing values using is.na() 
is.na(Data_split$Q1)
#The above outputs NA values. It is difficult to determine the number of missing values
#We add sum() to the is.na() to determine the number of missing values in a give column of the dataset
sum(is.na(Data_split$Q4))
#Q4 has 162 missing values
sum(is.na(Data_split$Q2))
#Q2 has 165 missing values

#Functionl programming can help us limit repeating the same functions when assessing the number of missing values in different columns
Data_split %>% 
  map(~ sum(is.na(.))) #The dot in the is.na() acts as a placeholder for every column in the dataset 
#The year column has 1833 missing values
#The function created gives us missing values for each column in the Data_split dataset

#STEP 2: Droping na values from our dataset
Data_split %>% 
  drop_na()
#Based on output, dropping na values is not an effective method given that some columns contains vital data for our analysis

#STEP 3:Rather than dropping na values, we could use replace_na() to fill in missing values in columns
Data_replace_na <- Data_split %>% 
  replace_na(list(Q1 = 0, Q2 = 0, Q3 = 0, Q4 = 0))
Data_replace_na

#STEP 4: Entails following data normalization practices. Q1-Q4 columns should be a single column
#Values in Q1-Q4 columns should be in a second column. This can be achieved by pivot_longer()
Data_pivot <- Data_replace_na %>% 
  pivot_longer(
    cols = c(Q1, Q2, Q3, Q4),
    names_to = "Period",
    values_to = "Amounts"
      )
Data_pivot
