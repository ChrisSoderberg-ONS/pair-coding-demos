# Demonstration - writing functions for numerical data

# Input
x <- c(-23, -14, 23, 4, -9, 2, 8, -21, 5, 23, 76, 23, -28, 23, 1, 0, 67, 48)

# Task - Given an input x, return the rectified linear unit, defined as max(x, 0)

# Relu with no function:

max(c(-23, 0))
max(c(-14, 0))
max(c(23, 0))
# This is not very efficient


# Relu function:

relu <- function(x) {
  return(max(c(x, 0)))
}

# y <- relu(x) returns an error, as we cannot apply our function to a vector!

relu(-23)
relu(-14)
relu(23)
# This is only marginally more efficient than no function...


# Solution: Relu function with a loop:

relu_loop <- function(x) {
  output <- c()
  for (i in 1:length(x)) {
    output <- c(output, relu(x[i]))
  }
  return(output)
}

y <- relu_loop(x)

plot(x, y, sub="Rectified linear unit with loops")

# Better solution: Relu with lapply

y <- lapply(x, relu)

plot(x, y, sub="Rectified linear unit with lapply")

# This method extends to using a tibble/DataFrame

library(dplyr)

df <- tibble(x)

df$y <- lapply(df$x, relu)

plot(df, sub="Dataframe plot")

# Or tidyverse style,
df <- tibble(x)

df |>
  mutate(y = lapply(x, relu)) %>%
  plot(sub = "Dataframe plot, tidyverse style")
