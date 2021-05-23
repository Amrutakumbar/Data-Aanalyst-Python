# Q1 Try to write a code for printing sequence of numbers from 1 to 50 with the differences of 3, 5, 10 
seq(1, 50, by = 3)
seq(1, 50, by = 5)
seq(1, 50, by = 10)


# Q2 What are the different data objects in R? and write syntax and example for each and every object
# Ans: There are 6 types of objects in R Programming. They include vector, list, matrix, array, factor, and data frame
# 1) Vector:
die <- c(1, 2, 3, 4, 5, 6)
die
is.vector(die)
# 2) List:
card <- list("ace", "hearts", 1)
card
# 3) Matrix:
m <- matrix(die, nrow = 2)
m
# 4) Array:
ar <- array(c(11:14, 21:24, 31:34), dim = c(2, 2, 3))
ar
# 5) Data Frame:
df <- data.frame(face = c("ace", "two", "six"),  
                 suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3))
df
# 6) Factor:
gender <- factor(c("male", "female", "female", "male"))
attributes(gender)


# Q3 Create Data frame with 3 columns and 5 rows and write a code to fetch and delete row and a column using index and add new column and row to the existed data frame
Name = c("Messi", "Ronaldo", "Van Dijk", "Sergio" ,"Torres")
Teams = c("Barca", "Juve", "Liverpool" , "Barca" , "Liverpool")
Age = c(22, 25, 45, 33, 39)
df = data.frame(Name, Teams, Age)
print(df)
# Fetch first and second row
print(df[1:2, ])
# Deleting 3rd Row and Second Column
newDF = df[-3, -2]
print(newDF)
# Adding new column and row
newDf = rbind(df, data.frame(Name = "De Jong",
                             Teams = "Barca",
                             Age = 23))
print(newDf)
df1 = data.frame(
  "Name" = c("Amiya", "Raj", "Asish"),
  "Language" = c("R", "Python", "Java"),
  "Age" = c(22, 25, 45)
)
print(df1)
newDf1 = cbind(df1, Rank=c(3, 5, 1))
print(newDf1)


# Q4 Write nested if else statements to print whether the given number is negative, positive or Zero
num = as.double(readline(prompt="Enter a number: "))
if(num > 0) {
  print("Positive number")
} else {
  if(num == 0) {
    print("Zero")
  } else {
    print("Negative number")
  }
}


# Q5 write a program to input any value and check whether it is character, numeric or special character
x = "Messi is GOAT of Football"
is.character(x)
is.numeric(x)


# Q6 write difference between break and next also write examples for both
# A break statement is used inside a loop (repeat, for, while) to stop the iterations and flow the control outside of the loop 
# A next statement is useful when we want to skip the current iteration of a loop without terminating it. 
x <- 1:5
for (val in x) {
  if (val == 3){
    break
  }
  print(val)
}

x <- 1:5
for (val in x) {
  if (val == 3){
    next
  }
  print(val)
}


# Q7 write a program to print a given vector in reverse format  
x = c(1,5.6,3,10,3.5,5)
print(x)
rv = rev(x)
print(rv)


# Q8 write a program to get the mode value of the given vector
library(modeest)
charv <- c("a","b","c","t","a","c","r","a","c","t","z","r","v","t","u","e","t")
mode = mfv(charv)
print(mode)


# Q9 Write a function to filter only data belongs to 'setosa' in species of Iris dataset.
library(datasets)
data(iris)
summary(iris)
names(iris) <- tolower(names(iris))
library(dplyr)
setosa <- filter(iris, species == "setosa")
print(setosa)


# Q10 Create a new column for iris dataset with the name of Means_of_obs, which contains mean value of each row.( using dplyr package)
newCol <- mutate(iris, mean.length = mean(sepal.length, na.rm = TRUE))
print(newCol)


# Q11 Filter data for the "versicolor" and get only 'sepel_length' and Sepel _width' columns.( using dplyr package)
versicolor <- filter(iris, species == "versicolor")
print(versicolor)
select(iris, species, sepal.length, sepal.width)


# Q12 create below plots for the mtcars also write your inferences for each and every plot (use ggplot package) Use Different ( Size , Colour )
library(datasets)
data(mtcars)
summary(mtcars)
names(mtcars) <- tolower(names(mtcars))
library(ggplot2)
ggplot(mpg, aes(x= class)) + geom_bar() # bar_graph
mtcars$cyl = factor(mtcars$cyl)
ggplot(mtcars, aes(x=cyl, y=disp)) + geom_boxplot() #boxplot
ggplot(data = subset(mtcars,am == 0),aes(x = mpg,y = disp,colour = factor(cyl))) + geom_point() #scatter_plot
ggplot(data  = mtcars, aes( x = mpg)) + geom_histogram( ) #histogram
ggplot(data=mtcars, aes(x=cyl, y=disp, group=1)) +
  geom_line()+
  geom_point() #line_graph

