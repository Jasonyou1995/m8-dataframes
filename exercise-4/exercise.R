# Exercise 4: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
USPE <- as.data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(USPE)

# Why are they so strange?


# What are the row names of your dataframe?
row.names(USPE)

# Create a column `category` that is equal to your rownames
USPE$category <- rownames(USPE)

# How much money was spent on personal care in 1940?
USPE['Personal Care', '1940']

# How much money was spent on Food and Tobacco in 1960
USPE['Food and Tobacco', '1960']

# What was the highest expenditure category in 1960?
max(USPE$'1960')

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
highest <- function(year) {
    year <- toString(year)
    USPE[USPE[, year] == max(USPE[, year]), 'category']
}

# Using your function, determine the highest spending category of each year
for (year in colnames(USPE)[1:5]) {
    print(highest(year))
}

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
all.highest <- list()
for (year in colnames(USPE)[1:5]) {
    all.highest[[year]] <- highest(year)
}