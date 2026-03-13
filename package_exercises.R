
# PACKAGE EXERCISES

# Exercise 1 — Create a new package

# Task:
#   Use usethis::create_package("path/to/mypkg") to create a package in a folder of your choosing.
#
# Steps:
#   1. Load the usethis and devtools packages.
#   2. Create your package directory using create_package().


###############################################################

# Exercise 2 — Create a new function

# Task:
#   Inside the R/ folder of your package, create a script named
#   "greet.R" and write a function called greet() that:
#       - takes one argument (name)
#       - returns a message like "Hello, name!"
#
# Hint:
#   greet <- function(name) {
#     paste("Hello,", name)
#   }

###############################################################

# Exercise 3 — Add roxygen documentation

# Task:
#   Add a complete roxygen2 documentation block to greet().
#
# Your documentation must include:
#   - a title
#   - a description
#   - @param
#   - @return
#   - @export
#
# After writing it:
#   Run devtools::document() to generate documentation.

###############################################################

# Exercise 4 — Load your package

# Task:
#   Use devtools::load_all() to load your package code and test
#   your greet() function.
#
# Example:
#   devtools::load_all()
#   greet("world")

###############################################################

# Exercise 5 — Add a dependency

# Task:
#   Add the stringr package as a dependency using:
#       usethis::use_package("stringr")
#
# Then update your greet() function so it uses stringr::str_to_upper()
# to return the name in uppercase.
#
# Example:
#   greet("world") → "Hello, WORLD!"

###############################################################

# Exercise 6 — Run a package check

# Task:
#   Run devtools::check() and resolve any warnings or errors.
#

###############################################################

# Exercise 7 — Add a second function

# Task:
#   Add another function to your package called goodbye() that:
#       - takes a name
#       - returns "Goodbye, name!"
#       - is properly documented (with roxygen)
#       - is exported
#
# Then reload your package and test it:
#   goodbye("world")

###############################################################

# Exercise 8 — Build your package

# Task:
#   Use devtools::build() to create a source package file.
#
# Steps:
#   1. Make sure your package documents are up to date (devtools::document()).
#   2. Ensure your package passes R CMD check (devtools::check()).
#   3. Run:
#         devtools::build()
#
