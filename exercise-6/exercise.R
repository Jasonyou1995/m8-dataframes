# Exercise 6: Popular Baby Names Over Time
require(dplyr)
# Read in the female baby names csv file into a variable called `female.names`
female.names <- read.csv('data/female_names.csv', stringsAsFactors = FALSE)

# Create a vector `year` as the year column of the dataset
year <- female.names$year

# Create a vector `name` as the name column of the datset
# As in the last exercise, you'll need to convert this column to a vector
name <- female.names$name

# Create a vector `prop` as the proportion column of the dataset
prop <- female.names$prop

# Create a vector `names.2013` as your name vector where your year vector is 2013
names.2013 <- name[female.names$year == 2013]

# Create a vector `prop.2013` as the your prop vector where your year vecctor is 2013
prop.2013 <- prop[female.names$year == 2013]

# What was the most popular female name in 2013?
most.pop.name <- names.2013[prop.2013 == max(prop.2013)]

# Write a funciton `MostPopular` that takes in a value `my.year`, and returns
# a sentence stating the most popular name in that year. 
MostPopular <- function(my.year) {
    dat <- female.names[female.names$year == my.year,]
    return(dat$name[dat$prop == max(dat$prop)])
}

# What was the most popular female name in 1994?
pop.name.1994 <- MostPopular(1994)

### Bonus ###

# Write a function `HowPopular` that takes in a name and a year, and returns
# a sentence with how popular that name was in that year
HowPopular <- function(name, year) {
    dat <- female.names[female.names$year == year,]
    pop <- dat$prop[dat$name == name]
    return(paste0("The proportion of ", name, " in ", year, " is around ",
                  round(pop * 100, 2), "%."))
}
# How popular was the name 'Laura' in 1995
Luara.1995 <- HowPopular('Laura', 1995)
