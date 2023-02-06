library(tidyr)
#---- Key actions to be excuted in cleaning data include: ---
  # -- seperate and join columns in Raw_excel_data datset. 
#Step 1:Seprate ProductID Column in Raw_excel_data dataset into two columns: Product and Product Type
#Achieved by use of seperate() in tidyr package

Raw_excel_data %>% 
  separate(col = ProductID, into = c("Product", "Product_type"), sep = -4)

#Step 2: Combine Category column and Product column to be one column
#Achieved by using the unite()

Data_split <- Raw_excel_data %>% 
  separate(col = ProductID, into = c("Product", "Product_type"), sep = -4) %>% 
  unite(col = "Product_Category", c(CategoryID, Product), sep = "-")
Data_split # A tidy dataset
