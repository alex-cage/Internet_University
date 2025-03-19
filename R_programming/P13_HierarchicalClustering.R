# File:   HierarchicalClustering.R
# Course: R: An Introduction (with RStudio)

# INSTALL AND LOAD PACKAGES ################################

library(datasets)  # Load base packages manually

# Installs pacman ("package manager") if needed
if (!require("pacman")) install.packages("pacman")

# Use pacman to load add-on packages as desired
pacman::p_load(pacman, tidyverse) 

# LOAD DATA ################################################

?mtcars
head(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)]  # Select variables (columns/features)
head(cars)

# COMPUTE AND PLOT CLUSTERS ################################

# Save hierarchical clustering to "hc." This codes uses
# pipes from dplyr.
hc <- cars   %>%  # Get cars data
      dist   %>%  # Compute distance/dissimilarity matrix
      hclust      # Computer hierarchical clusters
  
plot(hc)          # Plot dendrogram

# ADD BOXES TO PLOT ########################################

rect.hclust(hc, k = 2, border = "gray")
rect.hclust(hc, k = 3, border = "blue")
rect.hclust(hc, k = 4, border = "green4")
rect.hclust(hc, k = 5, border = "darkred")

# The rect.hclust function in R is used to draw rectangles around clusters in a hierarchical clustering dendrogram. Here's a breakdown of the function call rect.hclust(hc, k = 2, border = "gray"):
# Components:
# hc: This is the hierarchical clustering object, typically created using the hclust function. It contains the hierarchical clustering result.
# k = 2: This specifies the number of clusters to highlight. In this case, it will draw rectangles around the two clusters.
# border = "gray": This sets the color of the border of the rectangles. Here, the border color is set to gray.
# Example:


  # CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear packages
p_unload(all)  # Remove all add-ons
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
