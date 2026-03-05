# Pair coding - Exercises from R for Data Science

# Imports
library(tidyverse)
library(nycflights13)

# Exercise 1: Given a vector of birthdates, write a function to compute the 
#             age in years

birthdates <- c("20/06/1996", "14/08/1995", "09/02/1999", "20/10/1959", "16/04/1957")

age <- function(dates, format) {
  date_now <- today()
  
  b_dates <- strptime(dates, format)
  
  return(
    floor(
      as.numeric(difftime(date_now, b_dates, units = "w"))/52.25
    )
  )
}

age(birthdates, "%d/%m/%Y")

# Exercise 2: Write both_na(), a summary function that takes two vectors of 
#             the same length and returns the number of positions that have an 
#             NA in both vectors.

x <- c(1, 2, 3, NA, 5, NA)

y <- c(1, NA, 2, NA, 5, NA)


both_na <- function(x, y) {
  x_count <- c()
  for (i in 1:length(x)) {
    if (is.na(x[i])) {
      x_count <- c(x_count, i)
    }
  }
  
  y_count <- c()
  for (j in 1:length(x)) {
    if (is.na(y[j])) {
      y_count <- c(y_count, j)
    }
  }
  
  return(intersect(x_count, y_count))
}

both_na_fast <- function(x, y) {
  which((is.na(x) + is.na(y))==2)
}

both_na(x, y)

both_na_fast(x, y)

# Exercise 3: Modify rescale01() to map Inf to 1 and -Inf to 0

x <- c(1:10, Inf, -Inf)

rescale01 <- function(x) {
  x <- replace(x, x==Inf, 1)
  x <- replace(x, x==-Inf, 0)
  
  rng <- range(x, na.rm = TRUE)
  
  return((x - rng[1]) / (rng[2] - rng[1]))
}

rescale01(x)

# Exercise 4: Using the flights dataset, write a function that finds all the 
#             flights that were delayed by more than a given number
#             of hours

filter_severe <- function(df, hours) {
  mins = hours*60
  df |>
    filter(dep_delay >= mins)
}

flights %>% filter_severe(3)

# Exercise 5: Generalize the following function to take any number of variables
#             to count

count_prop <- function(df, var, sort = FALSE) {
  df |>
    count(pick({{ var }}), sort = sort) |>
    mutate(prop = n / sum(n))
}
