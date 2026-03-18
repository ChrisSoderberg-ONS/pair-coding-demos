# PACKAGE EXERCISES — SOLUTIONS

# Exercise 1 — Create a new package

# Load devtools and usethis

library(usethis)
library(devtools)

# Create the package

# usethis::create_package("")

###############################################################

# Exercise 2 — Create a new function

# Inside R/greet.R, the function should look like this:

greet <- function(name) {
  paste("Hello,", name)
}

###############################################################

# Exercise 3 — Add roxygen documentation


#' Greet a person by name
#'
#' This function constructs a friendly greeting using the
#' name supplied by the user.
#'
#' @param name A character string giving someone's name.
#'
#' @return A character string containing the greeting.
#' @export
greet <- function(name) {
  paste("Hello,", name)
}

# After adding this, run:
# devtools::document()


###############################################################

# Exercise 4 — Load your package

# Load all package code and test the function:
# devtools::load_all()
# greet("world")


###############################################################

# Exercise 5 — Add a dependency (stringr)

# Add to DESCRIPTION using:
# usethis::use_package("stringr")

library(stringr)

# Updated function using str_to_upper():

#' Greet a person (uppercase)
#'
#' Returns a greeting where the name is converted to uppercase
#' using the stringr package.
#'
#' @param name A character string.
#'
#' @return A character greeting.
#' @export
greet <- function(name) {
  upper_name <- stringr::str_to_upper(name)
  paste("Hello,", upper_name)
}

# Example:
# devtools::load_all()
# greet("world")   # "Hello, WORLD"


###############################################################

# Exercise 6 — Run a package check

# Correct call:
# devtools::check()

# Typical issues:
# - Missing documentation
# - Missing @export tag
# - Forgetting to load stringr (dependency)
# - Missing DESCRIPTION fields

###############################################################

# Exercise 7 — Add a second function

# In R/goodbye.R:

#' Say goodbye to someone
#'
#' Creates a farewell message using the provided name.
#'
#' @param name A character string.
#'
#' @return A farewell message as a character string.
#' @export
goodbye <- function(name) {
  paste("Goodbye,", name)
}

# After writing:
# devtools::document()
# devtools::load_all()
# goodbye("world")

###############################################################

# Exercise 8 — Build the package

# After documenting and passing R CMD check:
#   devtools::document()
#   devtools::check()

# Build the package source bundle:
# devtools::build()


