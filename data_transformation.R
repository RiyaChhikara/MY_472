# In this file, Student's Sleep Dataset will be analysed, which is a built in dataset in R

# Loading the sleep dataset
data(sleep)

?sleep

head(sleep)

# In this dataset, the column 'extra' has data for increase in hours of sleep

# This function creates a new column which transforms the data in 'extra' column to binary results.
# 1 for increase in sleep, and 0 for no increase in sleep
transform_sleep_data <- function(data) {
  data$extra_binary <- as.numeric(data$extra > 0) 
  
  # Returning the transformed data
  return(data)
}

# Calling the function to transform the sleep dataset
new_sleep_data <- transform_sleep_data(sleep)

# View the first few rows of the new dataset
head(new_sleep_data)
