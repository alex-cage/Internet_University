# File:   OverlayingPlots.R
# Course: R: An Introduction (with RStudio)

# INSTALL AND LOAD PACKAGES ################################

library(datasets)  # Load/unload base packages manually

# LOAD DATA ################################################

# Annual Canadian Lynx trappings 1821-1934
?lynx
head(lynx)

# HISTOGRAM ################################################

# Default
hist(lynx)

# Add some options
hist(lynx,
     breaks = 14,          # "Suggests" 14 bins
     freq   = FALSE,       # Axis shows density, not freq.
     col    = "thistle1",  # Color for histogram
     main   = paste("Histogram of Annual Canadian Lynx",
                    "Trappings, 1821-1934"),
     xlab   = "Number of Lynx Trapped")

# The paste() function in R is used to combine multiple strings into one single string. It takes one or more R objects (like characters, variables, etc.) and concatenates them together.

# Add a normal distribution
curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "thistle4",  # Color of curve
      lwd = 2,           # Line width of 2 pixels
      add = TRUE)        # Superimpose on previous graph


# 1. curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)), ...)
# dnorm(x, mean = mean(lynx), sd = sd(lynx)) – This is the normal distribution function.
# 
# dnorm() calculates the density of a normal distribution at each value of x.
# mean = mean(lynx) – This sets the mean of the normal distribution to be the mean of the lynx data.
# sd = sd(lynx) – This sets the standard deviation of the normal distribution to be the standard deviation of the lynx data.
# So, the curve will represent the normal distribution with the same mean and standard deviation as the lynx dataset.
# 
# 2. col = "thistle4"
# This specifies the color of the curve.
# col = "thistle4" gives the curve a light purple color (from R's predefined colors).

# 3. lwd = 2
# This specifies the line width of the curve.
# lwd = 2 makes the curve a bit thicker than the default (which is 1).

# 4. add = TRUE
# This tells R to add the curve to the existing plot rather than creating a new one.
# Without add = TRUE, the curve would overwrite the previous plot. By setting add = TRUE, you overlay the curve on the histogram.

# Add two kernel density estimators
lines(density(lynx), col = "blue", lwd = 2)
lines(density(lynx, adjust = 3), col = "purple", lwd = 2)

# 1. density(lynx)
# density() is a function in R used to estimate the kernel density of a numeric variable.
# It estimates the probability density function (PDF) of the data using kernel smoothing. This helps to visualize the distribution of the data as a smooth curve, instead of a histogram with discrete bars.
# 
# 2. lines(density(lynx), col = "blue", lwd = 2)
# lines(density(lynx)) – Adds the kernel density curve of the lynx data to the existing plot.
# col = "blue" – Specifies the color of the density curve, which is blue in this case.
# lwd = 2 – Sets the line width to 2 pixels (thicker than the default width of 1).
# 
# 3. lines(density(lynx, adjust = 3), col = "purple", lwd = 2)
# density(lynx, adjust = 3) – Here, the adjust parameter is used to control the smoothing bandwidth of the kernel density estimate.
# adjust = 3 makes the kernel smoother, meaning the density curve will be less sensitive to small fluctuations in the data and appear smoother. A lower adjust value (e.g., adjust = 1) makes the curve more sensitive, capturing more variation in the data.
# col = "purple" – This changes the color of the second density curve to purple.
# lwd = 2 – Again, this sets the line width to 2 pixels for the second curve.

# Add a rug plot
rug(lynx, lwd = 2, col = "gray")

# rug() adds a rug plot (a series of short lines) to the x-axis at the positions of each data point in the lynx data.
# Each tick mark represents a single data point in the lynx dataset, helping to show the distribution of the individual data values.

# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
