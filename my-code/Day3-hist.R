str(cars)
head(cars)
dist <- cars[,2] 
speed <- cars[ ,1]
summary(cars)
head(cars$speed)
par(mfrow=c(2,2))                     # 그래픽 매개변수 (parameter) 여러플롯을 하나에 배치
# par(mfcol=c(2,2))                   # 열 순서로 그림 왼위 왼아래 오위 오른쪽 아래
hist(dist,                            # 자료(data)
     main="Histogram for 제동거리",   # 제목
     xlab ="제동거리",                # x축 레이블
     ylab="빈도수",                   # y축 레이블
     border="blue",                   # 막대 테두리색
     col="green",                     # 막대 색
     las=0,                           # x축 글씨 방향(0~3)
     breaks=5)                        # 막대 개수 조절
hist(dist,                            # 자료(data)
     main="Histogram for 제동거리",   # 제목
     xlab ="제동거리",                # x축 레이블
     ylab="빈도수",                   # y축 레이블
     border="blue",                   # 막대 테두리색
     col="green",                     # 막대 색
     las=1,                           # x축 글씨 방향(0~3)
     breaks=5)                        # 막대 개수 조절
hist(dist,                            # 자료(data)
     main="Histogram for 제동거리",   # 제목
     xlab ="제동거리",                # x축 레이블
     ylab="빈도수",                   # y축 레이블
     border="blue",                   # 막대 테두리색
     col="green",                     # 막대 색
     las=2,                           # x축 글씨 방향(0~3)
     breaks=5)                        # 막대 개수 조절
hist(dist,                            # 자료(data)
     main="Histogram for 제동거리",   # 제목
     xlab ="제동거리",                # x축 레이블
     ylab="빈도수",                   # y축 레이블
     border="blue",                   # 막대 테두리색
     col="green",                     # 막대 색
     las=3,                           # x축 글씨 방향(0~3)
     breaks=5)                        # 막대 개수 조절

par(mfrow=c(1,1))                     # 원래 설정으로 초기화 
dev.off()                             # 초기화 

hist(speed,
     main="Histogram of speed",
     xlab = "속도",
     ylab = "어쩌구",
     border = "black",
     col = "red",
     las = 1,
     breaks = 8)

speed <- cars[ ,2]
boxplot(speed, main="자동차 속도")
boxplot.stats(speed)                          # 통계값
range(cars[,2])

boxes <- boxplot.stats(dist)
print(boxes)
str(boxes)

#$ stats: num [1:5] 2 26 36 56 93            최소 1사분위 2사분위(중앙값) 3사분위 최대
#$ n    : int 50                             개수
#$ conf : num [1:2] 29.3 42.7                확률 95% 신뢰구간
#$ out  : num 120                            이상치 outlier

# ~ 길이를 ~ 품종 별로 그려라
boxplot(Petal.Length~Species, data=iris, main="품종별 꽃잎의 길이")
boxplot(Petal.Width~Species, data=iris, main="품종별 꽃잎의 너비")
boxplot(Petal.Width~Species, data=iris, main="품종별 꽃잎의 너비", las=1)

str(mtcars)
head(mtcars)
summary(mtcars)
par(mfrow=c(1,3))
barplot(table(mtcars$carb), 
        main="Barplot of Carburetors",
        xlab="#of carburetors",  
        ylab="frequency",
        col="blue")
barplot(table(mtcars$cyl), 
        main="Barplot of Cylender",
        xlab="#of cylender",  
        ylab="frequency",
        col="red")
barplot(table(mtcars$gear), 
        main="Barplot of Gear",
        xlab="#of gears",  
        ylab="frequency",
        col="green", las = 1)

barplot(table(mtcars$mpg), 
        main="자동차 연비",
        xlab="연비",  
        ylab="빈도수",
        col="skyblue",
        las = 1,
        breaks = 5)
barplot(table(mtcars$disp), 
        main="자동차 배기량",
        xlab="배기량",  
        ylab="빈도수",
        col="hotpink",
        las = 1,
        breaks = 5)
barplot(table(mtcars$wt), 
        main="자동차 무게",
        xlab="무게",  
        ylab="빈도수",
        col="lightgreen",
        las = 1,
        breaks = 5)
par(mfrow=c(1,1)) # 해제


# 산점도 
rm(list = ls())

head(mtcars)
str(mtcars)

wt <- mtcars$wt                  # 중량 자료
mpg <- mtcars$mpg                # 연비 자료

plot(wt, mpg,                    # 2개 변수(x축, y축)
     main="중량-연비 그래프",    # 제목
     xlab="중량",                # x축 레이블
     ylab="연비(MPG)",           # y축 레이블
     col="red",                  # point의 color
     las = 1, 
     pch=19)                     # point의 종류

plot(mpg, wt,                    # 2개 변수(x축, y축)
     type = "p",                   # p(point) 종류 기본값 산점도 
     main = "중량-연비 그래프",    # 제목
     xlab = "연비",                # x축 레이블
     ylab = "중량",           # y축 레이블
     col = "red",                  # point의 color
     las = 1, 
     pch = 18)                     # point의 종류
par(mfrow=c(1,1)) # 해제

# pch 알아보기 chatgpt 코드 

# 3행 4열 레이아웃 설정
par(mfrow=c(3, 4))
# mtcars 데이터를 사용하여 pch 값을 0부터 11까지 각 점의 모양을 그리기
for (i in 0:11) {
  plot(mtcars$mpg, mtcars$wt,
       type = "b",
       pch=i, 
       main=paste("pch =", i), 
       xlab="mpg (연비)",
       ylab="wt (무게)",
       col="blue",
       cex=1.5)  # 점 크기 cex=1.5
}


# 산점도 행렬
# drat: 후방 차축비(rear axle ratio)
vars <- c("mpg","disp","drat","wt")    # 대상 변수
target <- mtcars[,vars]
head(target)
pairs(target,                          # 대상 데이터
      main="Multi Plots")

iris.2 <- iris[,3:4]                   # 데이터 준비
point <- as.numeric(iris$Species)      # 점의 모양
point                                  # point 내용 출력
color <- c("red","green","blue")       # 점의 컬러
plot(iris.2,
     main="Iris plot",
     pch=c(point),
     # col=color[point])
     col='hotpink')

plot(iris.2,
     main="Iris plot",
     pch=rep(c('+', '-', '|'), each =50),         # each를 지정해줘야 앞에 나오는 것부터 기호 지정 
     col=color[point])                            # 없을 땐 +-- |를 돌아가면서 순서대로 적용 150개 (+ - | 반복)


# 이전 메모리 제거
rm(list = ls())

# code 6-4
beers = c(5,2,9,8,3,7,3,5,3,5)                 # 자료 입력
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07,  # 자료 입력
         0.06,0.02,0.05)
#bal~beers:
# 공식(formula) 형태 bal y 축 종속변수, beer x축 독립변수 

tbl <- data.frame(beers,bal)                   # 데이터프레임 생성
tbl

plot(bal~beers, data=tbl)                 # 산점도
plot(bal~beers, tbl)                     # 산점도
 
# 선형 회귀 모델에서 **bal = β₀ + β₁ * beers + ε**와 같은 형태로 나타낼 수 있습니다.
# β₀: 절편 (intercept)
# β₁: 기울기 (slope)
# ε: 오차항 (error term)

res <- lm(bal~beers,data=tbl)                  # 선형 회귀식 도출(linear model) 약자 lm 
res                                            # coefficient 계수 
summary(res)
coef(res)                                      # 기울기, 절편 확인


abline(res)                                    # 회귀선 그리기
# abline(res, col ="yellow", lwd = 2)
cor(beers,bal)                                 # 상관계수 계산
cor(bal, beers)                                # 상관계수 계산

# code 6-5
cor(iris[,1:4])               # 4개 변수 간 상관성 분석
cor(iris[ ,-5])
# help(mtcars) 를 입력하면, mtcars 데이터의 설명을 볼 수 있습니다. 
cor(mtcars)
help(mtcars)

plot(iris.2,
     main="Iris plot",
     pch=rep(c('+', '-', '|'), each =50),         # each를 지정해줘야 앞에 나오는 것부터 기호 지정 
     col=color[point])                            # 없을 땐 +-- |를 돌아가면서 순서대로 적용 150개 (+ - | 반복)
iris
res2 <- lm(iris$Petal.Width~iris$Petal.Length, iris.2)
abline(res2)
cor(iris.2$Petal.Width, iris.2$Petal.Length)
coef(res2)
summary(res2)

#https://www.perplexity.ai/ 검색 가능 ai 

# 데이터 생성
set.seed(123)
x <- 1:50
y <- 5 + 2*x + rnorm(50, 0, 5)

# 선형 회귀 모델 만들기
model <- lm(y ~ x)

# 예측값 계산
y_pred <- predict(model)

# 그래프 그리기
plot(x, y,
     xlab = "Independent Variable (x)", 
     ylab = "Dependent Variable (y)",
     main = "Observed vs. Predicted Values")

# 관측값과 예측값 사이의 선분 그리기
segments(x, y, x, y_pred, col = "gray", lty = 2)

# 예측값 선 그리기
lines(x, y_pred, col = "red")

# 범례 추가
legend("topleft", legend = c("Observed", "Predicted"),
       col = c("black", "red"), lty = c(1, 1),
       bty = "n")

# 선형 그래프 

# 이전 메모리 제거
rm(list = ls())

# code 6-6
month = 1:12                          # 자료 입력
late = c(5,8,7,9,4,6,12,13,8,6,6,4)   # 자료 입력
plot(month,                           # x data
     late,                            # y data
     main="지각생 통계",              # 제목
     type= "l",                       # 그래프의 종류 선택(알파벳 l line)
     lty=1,                           # 선의 종류(line type) 선택
     lwd=1,                           # 선의 굵기 선택
     xlab="Month",                    # x축 레이블
     ylab="Late cnt"                  # y축 레이블
)

# code 6-7
month = 1:12
late1 = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month,                          # x data
     late1,                          # y data
     main="Late Students",
     type= "b",                      # 그래프의 종류 선택(알파벳)
     lty=1,                          # 선의 종류(line type) 선택
     col="red",                      # 선의 색 선택
     xlab="Month ",                  # x축 레이블
     ylab="Late cnt",                # y축 레이블
     ylim=c(1, 15)                   # y축 값의 (하한, 상한)
)

# 위 그림에 다음 그림을 그림
lines(month,                         # x data
      late2,                         # y data
      type = "b",                    # 선의 종류(line type) 선택
      col = "blue")                  # 선의 색 선택

legend("topleft", legend = c("학생 A", "학생 B"),
       col = c("red", "blue"), lty = c(1, 1),
       bty = "n")




# type 별 그래프 예시 
# 데이터 준비
x <- c(1, 2, 3, 4, 5)
y <- c(1, 4, 9, 16, 25)

# 1. 점만 표시 (type = "p")
plot(x, y, type = "p", main = "Plot Type Examples", col = "red", pch = 16, xlab = "X", ylab = "Y")

# 2. 선만 표시 (type = "l")
plot(x, y, type = "l", main = "Plot Type Examples", col = "blue", lwd = 2, xlab = "X", ylab = "Y")

# 3. 점과 선 모두 표시 (type = "b")
plot(x, y, type = "b", main = "Plot Type Examples", col = "green", pch = 16, lwd = 2, xlab = "X", ylab = "Y")

# 4. 선만 표시 (type = "c")
plot(x, y, type = "c", main = "Plot Type Examples", col = "purple", lwd = 2, xlab = "X", ylab = "Y")

# 5. 점과 선 겹쳐서 표시 (type = "o")
plot(x, y, type = "o", main = "Plot Type Examples", col = "orange", pch = 16, lwd = 2, xlab = "X", ylab = "Y")

# 6. 수직선만 표시 (type = "h")
plot(x, y, type = "h", main = "Plot Type Examples", col = "brown", lwd = 2, xlab = "X", ylab = "Y")

# 7. 계단 모양 선 (type = "s")
plot(x, y, type = "s", main = "Plot Type Examples", col = "cyan", lwd = 2, xlab = "X", ylab = "Y")

# 8. 아무 것도 그리지 않음 (type = "n")
plot(x, y, type = "n", main = "Plot Type Examples", xlab = "X", ylab = "Y")

# 이전 메모리 제거
rm(list = ls())

# code 6-8

## (1) Prepare Data ----------------------
# 패키지가 미설치면 FALSE 반환
# 패키지가 설치면 메모리 로드
require("mlbench")

if (!require("mlbench")) {
  install.packages("mlbench")
}
library(mlbench)

help(mlbench)
data("mlbench.cuboids")
data("BostonHousing")
colnames(BostonHousing)

myds <- BostonHousing[,c("crim","rm","dis","tax","medv")]



## (2) Add new column ----------------------
grp <- c()
for (i in 1:nrow(myds)) {                    # myds$medv 값에 따라 그룹 분류
  if (myds$medv[i] >= 25.0) {
    grp[i] <- "H"
  } else if (myds$medv[i] <= 17.0) {
    grp[i] <- "L"
  } else {
    grp[i] <- "M"
  }
}
grp <- factor(grp)                           # 문자벡터를 팩터 타입으로 변경
grp <- factor(grp, levels=c("H","M","L"))    # 레벨의 순서를 H,L,M -> H,M,L

myds <- data.frame(myds, grp)                # myds에 grp 컬럼 추가

## (3) Add new column ----------------------
str(myds)
head(myds)
table(myds$grp)                              # 주택 가격 그룹별 분포

## (4) histogram ----------------------
par(mfrow=c(2,3))                            # 2x3 가상화면 분할
for(i in 1:5) {
  hist(myds[,i], main=colnames(myds)[i], col="yellow")
}
par(mfrow=c(1,1))                            # 2x3 가상화면 분할 해제

## (5) boxplot ----------------------
par(mfrow=c(2,3))                            # 2x3 가상화면 분할
for(i in 1:5) {
  boxplot(myds[,i], main=colnames(myds)[i])
}
par(mfrow=c(1,1))                            # 2x3 가상화면 분할 해제

## (6) boxplot by group ------------------
boxplot(myds$crim ~ myds$grp, main="1인당 범죄율")
boxplot(myds$rm ~ myds$grp, main="방의 수")
boxplot(myds$dis ~ myds$grp, main="직업센터까지의 거리")
boxplot(myds$tax ~ myds$grp, main="재산세")

## (7) scatter plot ------------------
pairs(myds[,-6])

## (8) scatter plot with group ------------------
point <- as.integer(myds$grp)                # 점의 모양 지정
color <- c("red","green","blue")             # 점의 색 지정
pairs(myds[,-6], pch=point, col=color[point])

## (9) correlation coefficient ------------------
cor(myds[,-6])

#################################################
# mlbench 패키지 설치
install.packages("mlbench")

# mlbench 패키지 로드
library(mlbench)

# BostonHousing 데이터셋 로드
data("BostonHousing")

# 데이터셋 확인
str(BostonHousing)
summary(BostonHousing)













































































































