#----------------------------------------#
# MB5370: Intro to Programming
# Natalie Wasinski
# May 2026

2+1

# Workspace:
#D:/MB5370_Techniques_1/Module_1/Module_01.2.R
#---------------------------------------------#

#----------------------------------------------#
# Workshop 01. Introduction #####
# Getting started ####
# This section introduces us to R by using it as a simple calculator.

2+1
1:30

# Variables and Assignment ####
# This section focuses on understanding how data is stored in R and why that 
# matters.

age <- 25
first_name <- 'Bill'
age + 1
age+age
# 01_age <- 25 #starts with a number, can't have special symbols, no spaces
Age <- 41 #cases matter
'age bob' <- 25 #no spaces, but with back ticks

# Exercise
15+25.1+20.25
sum_result <- 60.35
sum_result+Age

# Functions ####
# This section displays built in functions in R

Year_old <- 25.7
round(years_old) # rounds up
floor(years_old) # rounds down
years_old <- 25.765
round(years_old, 2) #comma after the object to specify argument

?round #go to help
args(round) #use args in the Console

# Exercise #
?paste
paste(first_name, years_old, sep = " is ")

# Misconceptions ####
# variables in programs do not work the same way as they do in spreadsheets


grade <- 55
total <- grade + 10
print (total)
grade <- 90
print (total) # value of total in a spreadsheet will be 100, but in programming
#a variable holds the value it was assigned (65)
total <- grade + 10

# What will this code do?
p <- 2
z <- 5
out <- p * z  # What should the value of out be? - 10
print (out) # What is the value of out? Is it the same as expected? - yes

# debugging errors
out <- p * a # undefined variable.
## > Error: object 'a' not found
out <- p * z

# Testing
x <- 1
is.character(x)
is.numeric (x)
print (total) # executed in the way it was defined

# Exercise #
my_quiz <- c("uno",
             "dos",
             "tres",
             # "cuatro" #need comma
             "cinco")
print (my_quis) #spelling error, won't find object
str(my_quiz)
len(my_quiz) #'len' is not a function

# Data types ###
# Exercise #
my_numeric_variable = 7.2
class(my_numeric_variable)
typeof(my_numeric_variable)
length(my_numeric_variable)
attributes(my_numeric_variable)

#Data structures ###
y <- c(1,2,3)
z <- c("Sarah", "Tracey", "Jon")

#Exercise #
class(z)
class(y)

#lists#
x <- list(1,"a", TRUE)
x[[2]]

# Data frames and tibbles ####
# Data frames are essentially spreadsheets, 2D or 'rectangular' data files, can 
#build data frame or insert csv.
my_dataframe <- data.frame (no = c(1,2,3), c("Tracey", "John", "Pete"), c(TRUE, FALSE, TRUE))
                            my_dataframe
                            str(my_dataframe)
my_dataframe$no = as.factor(my_dataframe$no)
str(my_dataframe)

# Packages and libraries ####
install.packages ("tidyverse") # download and install
library(tidyverse) # load into current workspace
#install.packages(ggplot2) #comment out so it doesn't run again
#run this script when getting a new computer or version of R to install packages
#install.packages("ggplot","tidyr", "earthtones", "redlistr", "dplyr", "terra")

library(ggplot2)
# to get help run ?ggplot

# Coding best practices ####
# Use style guides and follow them, including titles and headers

#encouraged to write this section directly after title:
# #load packages
# library(ggplot2)
# library (tidyr) - or just this package as they are a part of same one

# Class discussion:
# 1. Load the .csv dataset into R
# 2. Clean up the data so information can be easily extracted and read in R
# 3. Isolate single species and abundance column from data
# 4. Combine the single species and abundance column so the data matches
# 5. Create a plot for the species abundance