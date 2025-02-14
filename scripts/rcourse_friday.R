# HIE R Course - Monday
# Notes by Muhammedfuad
# February 7, 2024

library(dplyrAssist)
install.packages("tidydr")
library(tidydr)

alloma <-read.csv("M:/Downloads/Allometry.csv")

alloma
head(alloma)
tail(alloma)

# Accessing and reading Excel
install.packages("readxl")
library(readxl)
allom <-read_excel("M:/Downloads/Allometry.xlsx")

allom
head(allom)
tail(allom)

# Creating a Dataframework
student <- data.frame(
  First_name = c("John", "Peter", "Marius"),
  Age = c(23, 30, 27),
  Score = c(70, 80, 65),
  Last_graduation = c(2020, 2022, 2001)
)

student

# Creating a Dataframework
students <- data.frame(
  First_name <- c("John", "Peter", "Marius"),
  Age <- c(23, 30, 27),
  Score <- c(70, 80, 65),
  Last_graduation <- c(2020, 2022, 2001)
)

students

# So far we've learned that R is a big calculator!
1 + 1
# Working with objects
# Define two objects
x <- 5
y <- 2* x

# ... and use them in basic calculation.
x + y
z <- y
z

# few more calculations:
x * y
y / x
(x + y) / x

# Reassigning an object
# Before:
message(x)

x <- "Hello world!"

# After:
message(x)

# Concatenate

text <- "awesome right"
paste("R is", text)

text1 <- "R is"
paste(text1, text)

# Working with vectors
nums1 <- c(1,2,4,8,11,100,8)

# Get the sum of a vector:
sum (nums1)

# Get mean, standard deviation, number of observations (length):
mean(nums1)

sd(nums1)

length(nums1)

# Some functions results to a new vextor, for example:
prime <- rev(nums1) # reverse elements
prime

cumsum(nums1) #cumulative sum
cumsum(prime)

order(nums1)
sort(nums1)

# length Returns the length of the vector length(nums1)
# rev Reverses the elements of a vector rev(nums1)
# sort Sorts the elements of a vector sort(nums1)
# order Returns the order of elements in a vector order(nums1)
# head Prints the first few elements of a vector head(nums1, 3)
# max Returns the maximum value in a vector max(nums1)
# min Returns the minimum value in a vector min(nums1)
# which.max Which element of the vector contains the max value? which.max(nums1)
# which.min Which element of the vector contains the min value? which.min(nums1)
# mean Computes the mean of a numeric vector mean(nums1)
# median Computes the median of a numeric vector median(nums1)
# var Computes the variance of a vector var(nums1)
# sd Computes the standard deviation of a vector sd(nums1)
# cumsum Returns the cumulative sum of a vector cumsum(nums1)
# diff Sequential difference between elements of a vector diff(1:10)
# unique Lists all the unique values of a vector unique(c(5,5,10,10,11))
# round Rounds numbers to a specified number of decimal points round(2.1341,2)


# Multiple Variables
# Assign the same values to multiple variables in one line
var1 <- var2 <- var3 <- "Orange"

# Print variables value
var1
var2
var3

# Legal Variable names
myvar <- "John"
my_var <- "Doe"


# Vecvtorised Operations

vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(11, 12,13, 14, 15)

vec1 + 10

vec1^2

vec1 * vec2

vec1 + vec2

vec2 / vec1

vec2 - vec1

sum(vec1 + vec2)

sum(vec1) + sum(vec2)

# Mean of the vector 'vec1', *after* squaring the values:
mean(vec1^2)

# Mean of the vector, *then* square it:
mean(vec1)^2

# Standard deviation of 'vec1' after subtracting 1.2:
sd(vec1 - 1.2)

# Standard deviation of vec1, minus 1.2:
sd(vec1) - 1.2

# Log of vec1 and vec 2
log(vec1)
log(vec2)

log(vec1 + vec2)

# Mean of the log of vec2:
mean(log(vec2))

# Log of the mean of vec2:
log(mean(vec2))

# Mininum value of the square root of pair-wise sum of vec1 and vec2:
min(sqrt(vec1 + vec2))

# The sum of squared deviations from the sample mean:
sum((vec1 - mean(vec1))^2)

# The sample variance:
sum((vec1 - mean(vec1))^2) / (length(vec1) - 1)

#Character Vectors
words <- c("pet","elk","star","apple","the letter r")

sort(words)

nchar(words)

# Working Matrix
# Notice that, by default, R fills down columns, from left to right:
mat1 <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, ncol=3)
mat1

# A matrix can also be filled by rows:
mat2 <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, ncol=3, byrow=TRUE)
mat2

# As with vectors, we can do basic arithmetic with a numeric matrix :
# Get the sum of a vector:
sum(mat1)

# Get mean, standard deviation, and number of observations (length):
mean(mat1)

sd(mat1)

length(mat1)

# Addition
# Add a single number to all the elements of a matrix:
mat1 + 10

# Multiplication
# Each element is multiplied by 10:
mat2 * 10

mat1 * mat2

diag(mat1)

# Sums of rows and columns:
rowSums(mat1)

colSums(mat1)

# Transpose a matrix
t(mat1)


# Generating Data

# Sequence use this operator (:)
1:10

5:-5

# Examples using seq()
seq(from=10,to=100,by=10)

seq(from=23, by=2, length=12)

# Replicate numbers:
rep(2, times = 10)

rep(c(4,5), each=3)

# The rep function works with any type of vector. For example, character vectors:
# Simple replication
rep("a", times = 3)

# Repeat elements of a vector
rep(c("E. tereticornis","E. saligna"), each=3)

# Random Numbers
# Ten random numbers between 0 and 1
runif(10)

# Five random numbers between 100 and 1000
runif(5, 100, 1000)

numbers <- 1:15
sample(numbers, size=20, replace=TRUE)

# Objects in a workspace
# Alternatively, to see which objects you currently have in your workspace, use the following command:
ls()

# To remove objects,
rm(nums3, nums2)

# And to remove all objects that are currently loaded, use this command. Note: you want to use this wisely!
# rm(list=ls())

install.packages("installr")
updateR()
install.Rtools()
?mean()
??bandplot
??ANOVA

l <- "R is exciting"
print(l)  # This should output: [1] "R is exciting"
class(l)  # This should return: [1] "character")
