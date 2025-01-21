#복습
# 벡터 데이터
priority <- c("Low", "Medium", "High", "Medium", "Low")

# 순서형 팩터로 변환
priority_factor <- factor(priority, levels = c("Low", "Medium", "High"), ordered = TRUE)

# 결과 확인
print(priority_factor)

# 매트릭스(matrix): 2차원 행렬

ls()
rm(list = ls())

z <- matrix(1:20, nrow=4, ncol=5)
z
z2 <- matrix(1:20, nrow=4, ncol=5, byrow=T)
z2

x <- 1:4 #vector
x
y <- 5:8
y
z <- matrix(1:20, nrow=4, ncol=5)

m1 <- cbind(x,y)    #column bind
m1
m2 <- rbind(x,y)    #row bind
m2
m3 <- rbind(m2,x)
m3
m4 <- cbind(z, x)
m4

z <- matrix(1:20, nrow =4, ncol =5)
z

z[2, 3]
z[1, 4]
z[2, ]
z[ ,4]

z <- matrix(1:20, nrow = 4, ncol = 5)
z

z[2, 1:3]
z[1, c(1,2,4)]
z[1: 2,]
z[1:2]
z[, c(1, 4)]

score <-  matrix(c(90,85,69,78,
                   85,96,49,95,
                   90,80,70,60),
                 nrow=4, ncol=3)
score
rownames(score) <- c('John','Tom','Mark', 'Jane')
colnames(score) <- c('English', 'Math', 'Science')
score

score['John', 'Math']
score['Tom',c('Math','Science')]
score['Mark',]
score[,'English']
rownames(score)
colnames(score)
colnames(score)[2]

iris
str(iris)
str(iris$Species)

# row(행 observation 관측값) column(열 variables 변수)

city <- c("Seoul", "Tokyo", "Washington")
rank <- c(1, 3, 2)
city.info <- data.frame(city, rank)
city.info

iris
iris[,c(1:2)]
iris[,c(1, 3, 5)]
iris[,c("Sepal.Length", "Species")]
iris[1:5, ]
iris[1:5, c(1, 3)]

class(iris)
dim(iris)
nrow(iris)
ncol(iris)
colnames(iris)
head(iris)
tail(iris)
str(iris)
iris[,5]           #품종 데이터 보기
unique(iris[,5])
table(iris[,"Species"])

colSums(iris[,-5])      #5열 제외 합
colMeans(iris[,-5])
rowSums(iris[,-5])
rowMeans(iris[,-5])

z <- matrix(1:20, nrow=4, ncol =5)
z
t(z)

#추출 subset 
IR.1 <- subset(iris, Species == "setosa")
IR.1
IR.2 <- subset(iris, Sepal.Length >5.0 & Sepal.Width>4.0)
IR.2
IR.2[,c(2,4)]


a <- matrix(1:20, 4, 5)
b <- matrix(21:40, 4, 5)
a
b

2*a
b-5
2*a + 3*b

a+b
b-a
b/a
a*b

a <- a*3
b <- b-5

str(state.x77)



