# Demonstration - writing functions for numerical data

# Input
x <- c(-10:10)

# Task - Given an input x, return the rectified linear unit, defined as max(x, 0)

# Relu with no function at all :
for (i in 1:21) {
  if (x[i] > 0) {
    print(x[i])
  } else {
    print(0)
  }
}

# Ugly to read, doesn't give us a reusable output

# Relu of x using max() function:
for (i in 1:length(x)) {
  print(max(c(x[i], 0)))
}

# Cleaner code because we replaced the conditional with the max() function,
# but still doesn't give us a reusable output


# How do we write some actually useful code? 
# The answer is always: functions, and functions are at their best when they call other functions!

# Step 1: Wrap max() inside relu function:

relu <- function(x) {
  return(max(c(x, 0)))
}

# Step 2: resolve the problem of applying max() to a vector

# We could use a loop again, but there is much better way:

y <- lapply(x, relu)

plot(x, y, sub="Rectified linear unit with lapply")

# This method extends to using a tibble/DataFrame
library(dplyr)

df <- tibble(x)

df$y <- lapply(df$x, relu)

plot(df, sub="Dataframe plot")

# The best code: tidyverse style
df <- tibble(x)

df |>
  mutate(y = lapply(x, relu)) %>%
  plot(sub = "Dataframe plot, tidyverse style")
