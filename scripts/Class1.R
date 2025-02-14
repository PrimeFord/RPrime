# i want to add two numbers
2+2
# Arithmetics
12 * (10 + 1)
# Scientific notation
5E03 + 4E-01
# pi is built-in constant
sin(pi/2)
# Absolute value
abs(-10)
# yes you can divide by zero
1001/0
# square root
sqrt(225)
# Exponential
15^2
# Round down to nearest integer (and ceiling () for up or round () for closest)
floor(3.1415)
# function
for (x in 1:10) {
  print(x)
}

# numeric
a <- 10.5
class(a)

# integer
h <- 1000L
class(h)

# complex
k <- 9i + 3
class(k)

# character/string
l <- "R is exciting"
class("l")

# logical/boolean
m <- TRUE
class(m)

# Type Conversion
# You can convert from one type to another with the following functions:
# as.numeric()
# as.integer()
# as.complex()

x <- 1L # integer
y <- 2 # numeric

# convert from integer to numeric:
a <- as.numeric(x)

# convert from numeric to integer:
b <- as.integer(y)

# print values of x and y
x
y

# print the class name of a and b
class(a)
class(b)

# Escape Characters
str <- "We are the so-called \"Vikings\", from the north."

str
cat(str)

# Code	Result
# \\	Backslash
# \n	New Line
# \r	Carriage Return
# \t	Tab
# \b	Backspace