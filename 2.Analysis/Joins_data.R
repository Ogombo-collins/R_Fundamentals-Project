#Joins allow us to combine multiple rows from tibbles based on matching key values of columns in the tibbles

#---STEP 1: Create a dataset
df1 <- tibble(
  ID = c("john", "Yu", "Khan","Saif","Adam"),
  length = 1:5*2,
  length2 = 16:20*4
  
)
view(df1)

df2 <- tibble(
  ID = c("Mike", "Yu", "Khan","Saif","Adam"),
  width = 6:10 *3,
  width2 = 11:15*4
)
view(df2)

#--STEP 2:perform the joins
left_join(df1,df2,by="ID")
inner_join(df1,df2,by="ID")
right_join(df1, df2, by="ID")
