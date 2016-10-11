# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")
score <- c(12, 9, 37, 17)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season
allow <- c(10, 3, 18, 27)

# Combine your two vectors into a dataframe
all <- data.frame(score=score, allow=allow)

# Create a new column "diff" that is the difference in points
all[['diff']] <- all$score - all$allow

# Create a new column "won" which is TRUE if the Seahawks wom
all[['won']] <- c(T, F, T, T)

# Create a vector of the opponents
all[['opponent']] <- !all[['won']]

# Assign your dataframe rownames of their opponents
row.names(all) <- c('Dolphines', 'Rams', '49ers', 'Jets')
