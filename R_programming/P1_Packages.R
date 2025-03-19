# File:   Packages.R
# Course: R: An Introduction (with RStudio)

# LOAD PACKAGES ############################################

# I recommend "pacman" for managing add-on packages. It will
# install packages, if needed, and then load the packages.
install.packages("pacman")

# Then load the package by using either of the following:
require(pacman)  # Gives a confirmation message.
library(pacman)  # No message.

# Or, by using "pacman::p_load" you can use the p_load
# function from pacman without actually loading pacman.
# These are packages I load every time.
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
  ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, 
  stringr, tidyr) 

# Summary of functions of the R packages

# pacman – Simplifies package management in R by providing functions to install, load, and manage packages more efficiently.
# 
# dplyr – A powerful package for data manipulation, providing functions like mutate(), filter(), select(), and summarize() for efficient data wrangling.
# 
# GGally – Extends ggplot2 by providing additional functions for correlation plots, scatterplot matrices, and more, useful for exploratory data analysis.
# 
# ggplot2 – The most widely used data visualization package in R, based on the grammar of graphics, for creating highly customizable plots.
# 
# ggthemes – Provides additional themes and styles for ggplot2 to enhance visualization aesthetics.
# 
# ggvis – Similar to ggplot2, but designed for interactive web-based visualizations using the Shiny framework.
# 
# httr – Helps in making HTTP requests, useful for interacting with web APIs and fetching data from the internet.
# 
# lubridate – Simplifies working with dates and times in R, making it easier to parse, manipulate, and format date-time objects.
# 
# plotly – Enables interactive plotting in R, allowing users to create dynamic visualizations that support zooming, panning, and tooltips.
# 
# rio – Simplifies data import and export, supporting multiple file formats like CSV, Excel, JSON, and more.
# 
# rmarkdown – A package for creating dynamic documents, combining R code, Markdown text, and output results into HTML, PDF, or Word reports.
# 
# shiny – A framework for building interactive web applications in R, allowing users to create dashboards and interactive tools.
# 
# stringr – Provides functions for string manipulation and text processing, including pattern matching, replacement, and splitting.
# 
# tidyr – Helps reshape and clean data, making it "tidy" by using functions like gather(), spread(), separate(), and unite().


library(datasets)  # Load/unload base packages manually

# CLEAN UP #################################################

# Clear packages
p_unload(dplyr, tidyr, stringr) # Clear specific packages
p_unload(all)  # Easier: clears all add-ons
detach("package:datasets", unload = TRUE)  # For base

# Clear data
rm(list = ls())

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
