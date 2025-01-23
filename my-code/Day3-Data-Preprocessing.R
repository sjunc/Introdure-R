# 결측치 
z <- c(1, 2, 3, NA, 5, NA, 8)
sum(z)
mean(z)       # 결측치 때문에 계산 불가
median(z)
is.na()       # NA 여부 확인 
sum(is.na(z)) # NA 개수 확인
sum(z, na.rm=TRUE) # 결측치 제외하고 합계계산


# NA를 포함하는 test 데이터 생성
x <- iris
x[1,2] <- NA; x[1,3] <- NA                    #한줄에 여러개 표시 ;
x[2,3] <- NA; 
x[3,4] <- NA  
head(x)

is.na(x[,1])

for( i in 1:ncol(x)){
  this.na <-  is.na(x[, i])
  cat(colnames(x)[i], "\t", sum(this.na), "\n")
}

col_na <- function(y) {
  return(sum(is.na(y)))
}
# 인자 2라는 것은 열에 함수를 적용
na_count <- apply(x, 2, FUN=col_na)
na_count

# 익명함수 사용
na_count <- apply(x, 2, FUN = function(x) sum(is.na(x)))
na_count
# NA가 있는 열만 출력
na_count[na_count>0]

# code 7-5
# 모든 셀에 대해 na 검사
x <- iris
x[1,2] <- NA; x[1,3] <- NA
x[2,3] <- NA; 
x[3,4] <- NA  
is.na(x)

rowSums(is.na(x))         # 행별 NA의 개수
sum(rowSums(is.na(x)) > 0)  # NA가 포함된 행의 개수

sum(is.na(x))             # 데이터셋 전체에서 NA 개수
sum(rowSums(is.na(x)))    # 데이터셋 전체에서 NA 개수, 위 사용

# NA가 있는 행 출력
x[rowSums(is.na(x)) > 0, ]
subset(x, rowSums(is.na(x)) > 0)

## 이상치 ##
# code 7-5
# 모든 셀에 대해 na 검사
x <- iris
x[1,2] <- NA; x[1,3] <- NA
x[2,3] <- NA; 
x[3,4] <- NA  
is.na(x)

rowSums(is.na(x))         # 행별 NA의 개수
sum(rowSums(is.na(x)) > 0)  # NA가 포함된 행의 개수

sum(is.na(x))             # 데이터셋 전체에서 NA 개수
sum(rowSums(is.na(x)))    # 데이터셋 전체에서 NA 개수, 위 사용

# NA가 있는 행 출력
x[rowSums(is.na(x)) > 0, ]
subset(x, rowSums(is.na(x)) > 0)

#############################################
# airquality
colnames(airquality)
rowSums(is.na(airquality))
colSums(is.na(airquality))

# NA가 있는 행
airquality[rowSums(is.na(airquality)) > 0, ]
subset(airquality, rowSums(is.na(airquality)) > 0)
#############################################

# code 7-6
head(x)
x[complete.cases(x),]         # NA가 포함 안된 행들 출력
x[!complete.cases(x),]         # NA가 포함된 행들 출력
y <- x[complete.cases(x),]     # NA가 포함된 행들 제거
head(y)    

## 정렬 ##
# 이전 메모리 제거
rm(list = ls())

# code 7-9
v1 <- c(1,7,6,8,4,2,3)
sort(v1) # 정렬 반환
order(v1) # 결과: 값이 오름차순이 되는 첨자 번호
# 1: 정렬된 첫 번째 값의 첨자
# 6: 정렬된 두 번째 값의 첨자
# [1] 1 6 7 5 3 2 4

# 다음으로도 정렬
v1[order(v1)]
paste(v1[1], v1[6], v1[7], v1[5], v1[3], v1[2], v1[4])

v1 <- sort(v1)                  # 오름차순
v1
v2 <- sort(v1, decreasing=T)    # 내림차순 
v2

# code 7-10
head(iris)

# 해당 열 값이 오름차순이 되는 첨자 번호
order(iris$Sepal.Length) 

range(iris$Sepal.Length)
# 꽃받임 길이가 제일 작은 것 
iris[order(iris$Sepal.Length)[1], ]
# 꽃받임 길이가 제일 긴 것 
iris[order(iris$Sepal.Length)[nrow(iris)], ]

iris[order(iris$Sepal.Length),]               # 오름차순으로 정렬
# iris[order(iris$Sepal.Length)]  # 오류 
iris[order(iris$Sepal.Length, decreasing=T),] # 내림차순으로 정렬
iris.new <- iris[order(iris$Sepal.Length),]   # 정렬된 데이터를 저장
head(iris.new)

# 정렬 기준이 2개
# 모두 내림차순(decreasing=T)인 데, 
# -iris$Petal.Length로 꽃잎 길이는 반대로 오름차순
iris[order(iris$Species, -iris$Petal.Length, decreasing=T),] 

# 정렬 기준이 2개, 모두 내림차순(decreasing=T)
iris[order(iris$Species, iris$Petal.Length, decreasing=T),] 
# -iris$Sepal.Length로 꽃받침은 반대로 내림차순
iris[order(iris$Species, -iris$Petal.Length),] 

# 현재 줄 복사 붙이기 shift + alt + 아래화살표



## 데이터 분리와 선택 ##

# 이전 메모리 제거
rm(list = ls())

# code 7-11
sp <- split(iris, iris$Species)   # 품종별로 데이터 분리
sp                                # 분리 결과 확인
str(sp)
is.list(sp)
summary(sp)                       # 분리 결과 요약

sp$setosa                         # setosa 품종의 데이터 확인
sp$virginica                      # virginica 품종의 데이터 확인
sp$versicolor                     # versicolor 품종의 데이터 확인
is.data.frame(sp$setosa)

# code 7-12
subset(iris, Species == "setosa")
subset(iris, Sepal.Length > 7.5)
subset(iris, Sepal.Length > 5.1 & Sepal.Width > 3.9)

subset(iris, Sepal.Length > 7.6,
       select=c(Petal.Length,Petal.Width))
subset(iris, Sepal.Length > 7.6,
       select=c(Sepal.Length,Petal.Length,Petal.Width))

#######################################################
iris[iris$Species == "setosa", ]
# iris[iris$Species == "setosa"] # 오류

# 조건에 맞는 모든 행을 선택 한 후, 특정 열만 보이게
iris[iris$Sepal.Length > 7.6, ][c('Petal.Length', 'Petal.Width')]
iris[iris$Sepal.Length > 7.6, ][c('Sepal.Length', 'Petal.Length', 'Petal.Width')]

identical(subset(iris, Species == "setosa"), iris[iris$Species == "setosa", ])
#######################################################

## 샘플

x <- 1:100
y <- sample(x, size =10, replace = F)
y

sample(1:10, 10)
sample(1:5, 6)    #replace는 False가 기본값임을 알 수 있음 
sample(1:5, 7, replace = TRUE)

set.seed(1)
idx <-  sample(1:nrow(iris), size = 50, replace = FALSE)
idx
iris.50 <- iris[idx, ]      #50개 행 추출
dim(iris.50)
head(iris.50)

View(iris.50)

sample(1:20, size=5)
sample(1:20, size=5)
sample(1:20, size=5)

set.seed(100)
sample(1:20, size=5)
set.seed(100)
sample(1:20, size=5)
set.seed(100)
sample(1:20, size=5)

set.seed(100)
sample(1:4, size=5) # 오류
sample(1:4, size=5, replace=T)

## 추가 학습 #######################################
# require(): 패키지를 성공적으로 메모리에 로드하면
# TRUE를 반환하고, 그렇지 않으면 FALSE를 반환
if (!require(dplyr)) {
  install.packages("dplyr")
  library(dplyr)
}

sample_n(iris, 10)     # 10개
sample_frac(iris)      # 전체
sample_frac(iris, .1)  # 10%
####################################################

# code 7-16
# 조합 5C3 = 5*4*3 / 3*2 = 10개의 조합 발생
combn(1:5,3)         # 1~5에서 3개를 뽑는 조합

x = c("red","green","blue","black","white")
com <- combn(x, 2)   # x의 원소를 2개씩 뽑는 조합
com
is.matrix(com)
ncol(com) # 10

com[,1]
for(i in 1:ncol(com)) { # 조합을 출력
  cat(com[,i], "\n")
}

# choose() 조합의 수(종류)를 반환하는 함수 
choose(5, 3)
choose(5, 4)
choose(5, 2)

# 종료

# 
# lcd가 일렬로 정렬된 빛을 조절하는 기능을 한다면
# 외부에서 처음부터 일렬된 빛을 보내준다고 하면
# 굳이 편광은 필요없을 것인데 한장만 그렇고 차단하는 부분은 필요함. 
# 액정은 들어오는 빛을 조절하는데  
# 그럼 그냥 액정만으로 해도 되는 거 아니야? 
# 근데 하나하나 트렌지스터로 전압을 주냐마냐 하면 힘들데
# 그래서 가로 세로 TFT에서 전압을 다르게 줘서 조절한데 
# 한 점은 (가로전압, 세로전압)에 따라 달라지는 거지
# 그래서 1920 X 1080이 아니라 + 로 3000개로 처리






































































































