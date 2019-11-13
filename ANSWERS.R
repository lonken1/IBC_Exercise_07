# Clear working environment

rm(list = ls())

# PROBLEM NUMBER 1

# READ iris.csv into the variable iris
iris <- read.csv("iris.csv")

# This is the oddrows function. It uses seq to make a vector of odd numbers to the amount of rows.
# You must provide the dataframe. That is all.
oddrows <- function(x){
  odds <- x[seq(from=1, to=nrow(x),by=2),]
  
  return(odds)
}

# This runs the new function on iris
oddrows(iris)


# PROBLEM NUMBER 2

# Function that returns the number of observations for a specified species
# You must specify the dataframe and the specific species
numberspecies <- function(data,taxa){
  rows <- data[data$Species==taxa,]
  numberrows <- nrow(rows)
  
  return(numberrows)
}

# Running numberspecies on iris
numberspecies(iris,"virginica")

# This returns a dataframe for flowers with a Sepal.Width greater than a specified amount
# You must provide the dataframe and the width
certainsepallength <- function(data,width){
  flowers <- data[data$Sepal.Width>width,]
  
  return(flowers)
}

# Running certainsepallength on iris with a specified width of 3.0
certainsepallength(data=iris,width=3.0)

# Writes the data for a a given species to a csv file with species name as the file
# You must provide the dataframe and species
dataforspecies <- function(data,taxa){
  specificdata <- data[data$Species==taxa,]
  filename <- paste(taxa,".csv")
  write.csv(specificdata,file=filename)
  
  return()
}

# Running dataforspecies on iris with virginica as the species
dataforspecies(iris,"virginica")
