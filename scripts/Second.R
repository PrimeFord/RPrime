# HIE R Course - Friday
# Notes by Muhammedfuad
# February 14, 2024

# Packages
library(dplyrAssist)
install.packages("tidydr")
library(tidydr)
install.packages("dplyr")
library(dplyr)


# Accessing and reading Excel
install.packages("readxl")
library(readxl)
marks <- read_excel("C:/Users/HP/Downloads/DAT7301_MARKS.xlsx")

marks

#Use table() function to get/create the frequency table for Marks
table <- table(marks$Marks)
table

#Use barplot() to visualize a frequency table in a graphic
barplot(table,
        main = "The Distribution of DAT7301 Marks (2024)",
        xlab = "Marks",
        ylab = "Frequency",
        col  = "blue",
        border = "purple"
        )

#group_by() function to make groups of the data frames
status <- marks$Status
status

#summarise() function with an appropriate action to reduce rows

marks %>%
  group_by(Marks, Status) %>%
  summarize(Freq = n(), .groups = "drop") %>%
  print(n = Inf)

marks

mean(marks$Marks)
sd(marks$Marks)
median(marks$Marks)
mode(marks$Marks)
