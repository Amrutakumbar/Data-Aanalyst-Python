

data("mtcars")
View(mtcars)
plot(mtcars$mpg,mtcars$disp) # Relationship between variables Scatterplot
plot(mtcars$disp,mtcars$hp)

# Histogram (Univariate)
hist(mtcars$mpg)

# Box Plot (To identify outliers)

boxplot(mtcars$hp)

install.packages("ggplot2")
library(ggplot2)
pairs(mtcars)
pairs(mtcars[,1:7])

