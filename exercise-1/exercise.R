# Exercise 1: Lists


# Create a vector of everything you ate for breakfast
breakfast <- c('orange juice', 'yogurt', 'grape')

# Create a vector of everything you ate for lunch
lunch <- c('pork', 'rice')

# Create a list `meals` that has contains your breakfast and lunch
all.food <- list(breakfast=breakfast, lunch=lunch)

# Add a `dinner` index to your `meals` list that has what you plan to eat for dinner
all.food[['dinner']] <- c('congee')

# Extract your 'dinner' element from your list and save it in a vector called 'dinner'
dinner <- all.food$dinner

### Bonus ### 
# Create a list that has the number of items you ate for each meal
numb.food <- lapply(all.food, length)

# Write a function that adds pizza to every meal
addPizza <- function(x) {
    x <- c(x, 'pizza')
}
# Add pizza to every meal!
addPizza(all.food)