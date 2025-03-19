# File:   DataFormats.R
# Course: R: An Introduction (with RStudio)

# DATA TYPES ###############################################

# Numeric

n1 <- 15  # Double precision by default
n1
typeof(n1)
n11 = as.integer(n1)
n11
typeof(n11)

n2 <- 1.5
n2
typeof(n2)

# Character

c1 <- "c"
c1
typeof(c1)

c2 <- "a string of text"
c2
typeof(c2)

# Logical

l1 <- TRUE
l1
typeof(l1)

l2 <- F # same as FALSE
l2 <- FALSE 
typeof(l2)

# DATA STRUCTURES ##########################################

## Vector ##################################################
# One dimension array, All same data type

v1 <- c(1, 2, 3, 4, 5)
v1
is.vector(v1)

v2 <- c("a", "b", "c")
v2
is.vector(v2)

v3 <- c(TRUE, TRUE, FALSE, FALSE, TRUE)
v3
is.vector(v3)

## Matrix ##################################################
# Two dimensions. Same length for columns or rows; same data class; columns are not named, they are indexed by numbers

m1 <- matrix(c(T, T, F, F, T, F), nrow = 2)
m1

m2 <- matrix(c("a", "b", 
               "c", "d"), 
               nrow = 2,
               byrow = T) # organize by rows
m2

## Array ###################################################
# Identical to a matrix but 3+ dimensions

# Give data, then dimemensions (rows, columns, tables)
a1 <- array(c( 1:24), c(4, 3, 2))
a1

## Data frame ##############################################
# can have vectors of multiple types. All same length. Closest R analogue to speadsheet. Special functions.

# Can combine vectors of the same length

vNumeric   <- c(1, 2, 3)
vCharacter <- c("a", "b", "c")
vLogical   <- c(T, F, T)

dfa <- cbind(vNumeric, vCharacter, vLogical)
dfa  # Matrix of one data type

df <- as.data.frame(cbind(vNumeric, vCharacter, vLogical))
df  # Makes a data frame with three different data types

## List ####################################################
# Most flexible. Ordered collection of elements. Any class, length, or structure. Can include lists.

o1 <- c(1, 2, 3)
o2 <- c("a", "b", "c", "d")
o3 <- c(T, F, T, T, F)

list1 <- list(o1, o2, o3)
list1

list2 <- list(o1, o2, o3, list1)  # Lists within lists!
list2

# COERCING TYPES ###########################################
# changing a data object from one type to another
# from character to logical, from matrix to data frame, from double to integer

## Automatic coercion ######################################

# Goes to "least restrictive" data type

(coerce1 <- c(1, "b", TRUE))
# coerce1  # Parenthese around command above make this moot
typeof(coerce1)

# The term coerce refers to how R forces elements to be of the same type when combining them in a vector. 
# R automatically coerces elements to the most general type that can hold all the different values without losing information.
# The parentheses around this command ensure that the result of the vector creation (c(1, "b", TRUE)) is assigned to the variable coerce1. 
# The parentheses are used to group the assignment operation, which makes it easy to evaluate the expression inside them immediately. 
# This will also print the result because of how R evaluates expressions within parentheses.

## Coerce numeric to integer ###############################

(coerce2 <- 5)
typeof(coerce2)

(coerce3 <- as.integer(5))
typeof(coerce3)

## Coerce character to numeric #############################

(coerce4 <- c("1", "2", "3"))
typeof(coerce4)

(coerce5 <- as.numeric(c("1", "2", "3")))
typeof(coerce5)
# default double precision

## Coerce matrix to data frame #############################

(coerce6 <- matrix(1:9, nrow= 3))
is.matrix(coerce6)

(coerce7 <- as.data.frame(matrix(1:9, nrow= 3)))
is.data.frame(coerce7)

# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)

