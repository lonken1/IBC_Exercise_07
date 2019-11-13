# Clear working environment

rm(list = ls())

# PROBLEM NUMBER 1

# READ iris.csv into the variable iris
iris <- read.csv("iris.csv")

# This is the oddrows function. It uses seq to make a vector of odd numbers to the amount of rows.
oddrows <- function(x){
  odds <- x[seq(from=1, to=nrow(x),by=2),]
  
  return(odds)
}

# This runs the new function on iris
oddrows(iris)


# PROBLEM NUMBER 2

# Function that returns the number of observations for a specified species
numberspecies <- function(data,taxa){
  rows <- data[data$Species==taxa,]
  numberrows <- nrow(rows)
  
  return(numberrows)
}

numberspecies(iris,"virginica")
