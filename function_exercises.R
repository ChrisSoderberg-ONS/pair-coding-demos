# Pair coding - Exercises from R for Data Science

# Imports
library(tidyverse)
library(nycflights13)

# Exercise 1: Given a vector of birthdates, write a function to compute the 
#             age in years

birthdates <- c()

age <- function(dates) {
  
}

# Exercise 2: Write both_na(), a summary function that takes two vectors of 
#             the same length and returns the number of positions that have an 
#             NA in both vectors.

both_na <- function(x, y) {
  
}

# Exercise 3: Modify rescale01() to map Inf to 1 and -Inf to 0

rescale01 <- function(x) {
  rng <- range(x, na.rm = TRUE, finite = TRUE)
  (x - rng[1]) / (rng[2] - rng[1])
}

# Exercise 4: Using the flights dataset, write a function that finds all the 
#             flights that were delayed by more than a given number
#             of hours

filter_severe <- function(hours) {
  
}

# Exercise 5: Generalize the following function to take any number of variables
#             to count

count_prop <- function(df, var, sort = FALSE) {
  df |>
    count({{ var }}, sort = sort) |>
    mutate(prop = n / sum(n))
}
