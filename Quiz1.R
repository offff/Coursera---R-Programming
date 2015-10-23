#Q4
x<-4
class(x)

#Q5
x <- c(4, "a", TRUE)
class(x)

#Q6
x <- c(1,3, 5)
y <- c(3, 2, 10)
cbind(x,y)

#Q8
x <- list(2, "a", "b", TRUE)
x[[1]]

#Q9
x <- 1:4
y <-2
x+y

#Q10
x <- c(3, 5, 1, 10, 12, 6)
x[x <= 5] <- 0
x

#Q11
colnames(Q1_dataset)

#Q12
Q1_dataset[1:2,]

#Q13
dim(Q1_dataset)

#Q14
z <- dim(Q1_dataset)[1]
y <- z-1
Q1_dataset[y:z,]

#Q15
Q1_dataset[47,1]

#Q16
sum(is.na(Q1_dataset$Ozone))

#Q17
mean(Q1_dataset$Ozone, na.rm = T)

#Q18
subset1 <- Q1_dataset[Q1_dataset$Ozone > 31,]
subset2 <- subset1[subset1$Temp > 90,]
subset3 <- na.omit(subset2)
subset3
mean(subset3$Solar.R)

#Q19
subset4 <- Q1_dataset[Q1_dataset$Month == 6,]
subset5 <- na.omit(subset4)
mean(subset4$Temp)

#Q20
subset6 <- Q1_dataset[Q1_dataset$Month == 5,]
max(na.omit(subset6$Ozone))
