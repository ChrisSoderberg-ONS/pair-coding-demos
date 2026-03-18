# PACKAGE TUTORIAL

# 1. Install and load package development tools

# usethis  -> helps create package structure + boilerplate files
# devtools -> provides functions for building, loading, documenting packages

install.packages("usethis")
install.packages("devtools")

library(usethis)
library(devtools)

###############################################################

# 2. Create a new package using usethis::create_package

# This creates:
#   - DESCRIPTION -> package metadata (name, version, dependencies)
#   - NAMESPACE -> functions your package exports (auto-generated)
#   - R/ folder -> where you will put your R scripts (functions)
#   - .Rproj file (if using RStudio)

usethis::create_package("")

###############################################################

# 3. Add a new R script inside the R/ folder

# Example: create a file called "hello.R" and add a simple function:

# hello <- function(name = "world") {
#   paste("Hello", name)
# }

###############################################################

# 4. Add roxygen documentation to your function

# In RStudio:
#   Place your cursor inside the function
#   Right-click -> Code -> Insert Roxygen Skeleton
# OR use shortcut:
#   Ctrl/Cmd + Alt + Shift + R

# Fill in the roxygen fields, e.g.:
#' Say hello to someone
#'
#' @param name A character string of someone's name
#'
#' @return A greeting message
#' @export
# hello <- function(name = "world") {
#   paste("Hello", name)
# }

###############################################################


# 5. Generate documentation + update NAMESPACE

# This creates .Rd files in man/ and updates NAMESPACE automatically.

devtools::document()


###############################################################

# 6. Load your package for development

devtools::load_all()

# Now you can run:
# hello("world")


###############################################################

# 7. Run automated package checks

# Runs R CMD check — looks for common issues and CRAN compliance.

devtools::check()


###############################################################

# 8. Build the package

# This creates a source package file that you can install locally and share with others

# The output is a .tar.gz file, e.g.:
#   mypkg_0.1.0.tar.gz

devtools::build()


