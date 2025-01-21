rm(list = ls())

favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 'SUMMER', 'FALL', 'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')

favorite
table(favorite)
table(favorite)/length(favorite)

ds <- table(favorite)
ds
barplot(ds, main = 'favorite season')
barplot(ds, main = 'favorite season', las=1)

ds <-  table(favorite)
ds
pie(ds, main ='favorite season')

favorite.color <-  c(2, 3, 2, 1, 1, 2, 2, 1, 3, 2, 1, 3, 2, 1, 2)
ds <- table(favorite.color)
ds

barplot(ds, main= 'favorite color')
barplot(ds, main = 'favorite color', las =1)
barplot(ds, main = 'favorite color', las = 2)
barplot(ds, main = 'favorite color', las = 3)

colors <- c('green',  'red', 'blue')
names(ds) <- colors
ds
barplot(ds, main = 'favorite color', col=colors)
pie(ds, main = 'favorite color', col = colors)

rm(list=ls())

weight <- c(60, 62, 64, 65, 68, 69)
weight.heavy <- c(weight, 120)
weight
weight.heavy

mean(weight)
mean(weight.heavy)

median(weight)
median(weight.heavy)

mean(weight, trim = 0.2)
mean(weight.heavy, trim = 0.2)

mydata <- c(60, 62, 64, 65, 68, 69, 120)
quantile(mydata)
quantile(mydata, (0:10)/10)
summary(mydata)

mydata <- c(1, 2, 3, 4)
quantile(mydata)
quantile(mydata, (0:10)/ 10)
summary(mydata)

mydata <- c(60, 62, 64, 65, 68, 69, 120)
var(mydata)     #분산, 평균에서 떨어진 정도
sd(mydata)      # 표준편차
range(mydata)   # 값의 범위

diff(range(mydata))
diff(c(150, 22))
diff(range(c(150, 22)))
diff(c(10, 100))



















