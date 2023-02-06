library(readr)

Stores_data <- readr::read_csv("02_Stores.csv")
Stores_data

library(readxl)
#first, create file name to ake it easy to read the file using read_excel() and maintain the code
file_excel <- "03_excel_source_data.xlsx"
Raw_excel_data <- read_excel(file_excel)
Raw_excel_data



