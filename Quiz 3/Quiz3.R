#Q1
library(datasets)
data(iris)
?iris
tapply(iris$Sepal.Length, iris$Species, mean)

#Q2
apply(iris[, 1:4], 2, mean)

#Q3
library(datasets)
data(mtcars)
?mtcars
head(mtcars)

with(mtcars, tapply(mpg, cyl, mean))

#Q4
hp_cyl <- with(mtcars, tapply(hp, cyl, mean))
hp_cyl
abs(hp_cyl[1] - hp_cyl[3])

#Q5
debug(ls)
ls
