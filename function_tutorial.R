# Demonstration - writing functions for numerical data

# Input
x <- c(-10:10)

# Task - Given an input x, return the rectified linear unit, defined as max(x, 0)

# Relu with no functions

# (It's nearly impossible to *actually* write R code with no functions at all, 
# as we're still using c, length and plot)

y <- c()
for (i in 1:length(x)) {
  if (x[i] > 0) {
    y <- c(y, x[i])
  } else {
    y <- c(y, 0)
  }
}
plot(x, y, sub="Rectified linear unit with for loop")

# Hard to read, and it isn't reusable. If we x changed later, we would have to copy this code
# to reassign y

# Marginal improvement: Relu of x using max function:

y <- c()
for (i in 1:length(x)) {
  y <- c(y, max(c(x[i], 0)))
}
plot(x, y, sub="Rectified linear unit with max function")

# Cleaner code because we replaced the conditional with the max function, but it still isn't reusable


# How do we write some good code? 
# The answer is always: functions, and functions are at their best when they call other functions!

# Step 1: Wrap max() inside relu() that will take a single parameter, x:

relu <- function(x) {
  return(max(c(x, 0)))
}

# Step 2: resolve the problem of applying relu() to a vector

# We could use a loop again, but there is much better way: the lapply function

y <- lapply(x, relu)

plot(x, y, sub="Rectified linear unit with lapply")

# Where this really shines is when it extends to DataFrames:
df <- data.frame(x)

df$y <- lapply(df$x, relu)

plot(df, sub="Dataframe plot")

# Elite R code: tidyverse style
library(tidyverse)

df <- tibble(x)

df |>
  mutate(y = lapply(x, relu)) %>%
  plot(sub = "Dataframe plot, tidyverse style")
