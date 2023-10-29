# In this file, Student's Sleep Dataset will be analysed, which is a built in dataset in R

# Loading the sleep dataset
data(sleep)

?sleep

head(sleep)

# In this dataset, the column 'extra' has data for increase in hours of sleep

# This function creates a new column which transforms the data in 'extra' column to binary results.
# 1 for increase in sleep, and 0 for no increase in sleep
# Ouput can be numeric: 1 or 0, or words: Yes or No
transform_sleep_data <- function(data, output) {
    if(output== "numeric"){
        data$extra_binary <- as.numeric(data$extra > 0) 
    } else if (output == "words") {
        data$extra_binary <- ifelse(data$extra>0,"yes", "no")
    }
  # Returning the transformed data
  return(data)
}

# Calling the function to transform the sleep dataset
new_sleep_data <- transform_sleep_data(sleep, "words")

# View the first few rows of the new dataset
head(new_sleep_data)
