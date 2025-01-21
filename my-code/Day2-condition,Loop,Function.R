job.type <- 'A'
job.type

if(job.type == 'B') {
  bonus <- 200          # 직무 유형이 B일 때 실행
} else {
  bonus <- 100          # 직무 유형이 B가 아닌 나머지 경우 실행
}
print(bonus)

if (job.type == 'B') {
  bonus <- 200          # 직무 유형이 B일 때 실행
} else
  bonus <- 100          # 직무 유형이 B가 아닌 나머지 경우 실행

print(bonus)

x <- 5

if (x > 0)
  print("x는 양수입니다.") else
  print("x는 0이거나 음수입니다.")

if (x > 0) print("x는 양수입니다.") else print("x는 0이거나 음수입니다.")

#### 오류 발생
x <- -5

if (x > 0) 
  print("양수입니다.") 
else
  print("음수이거나 0입니다.")

#else는 if와 같은 줄에 작성해야함. {}을 사용하면 한 줄로 인식

# ----- 4-2.R -----
job.type <- 'A'
bonus <- 100

if(job.type == 'A') {
  bonus <- 200            # 직무 유형이 A일 때 실행
}
print(bonus)


if (job.type == 'A') 
  bonus <- 300            # 직무 유형이 A일 때 실행

print(bonus)


# ----- 4-3.R -----
score <- 85

if (score > 90) {
  grade <- 'A' 
} else if (score > 80) {
  grade <- 'B' 
} else if (score > 70) {
  grade <- 'C' 
} else if (score > 60) {
  grade <- 'D' 
} else {
  grade <- 'F' 
}

print(grade)

# ----- 4-4.R -----
a <- 10
b <- 20
if (a>5 & b>5) {         # and 사용
  print (a+b)
}
if (a>5 | b>30) {        # or 사용
  print (a*b)
}


# ----- 4-5.R -----
a <- 10
b <- 20

if (a>b) {
  c <- a
} else {
  c <- b
}
print(c)

a <- 10
b <- 20

c <- ifelse(a>b, a, b)
print(c)


# ----- 4-6.R -----
for(i in 1:5) {
  print('*')
}


# ----- 4-7.R -----
for(i in 6:10) {
  print(i)
}


# ----- 4-8.R -----
for(i in 1:9) {
  cat('2 *', i, '=', 2*i, '\n') 
}

# for(i in 1:9) {
#  print('2 *', i, '=', 2*i, '\n') 
#} 에러 발생 print는 보통 하나만 출력

for(i in 1:9) {
  cat('2 *', i,'=', 2*i, ' ') 
}


# ----- 4-9.R -----
for (i in 1:20) {
  if (i%%2 == 0) {     # 짝수인지 확인
    print(i)
  }
}

# ----- 4-10.R -----
sum <- 0
for (i in 1:100) {
  sum <- sum + i    # sum에 i 값을 누적
}
print(sum)


# ----- 4-11.R -----
norow <- nrow(iris)                             # iris의 행의 수
mylabel <- c()                                  # 비어있는 벡터 선언

for(i in 1:norow) {
  if (iris$Petal.Length[i] <= 1.6) {            # 꽃잎의 길이에 따라 레이블 결정
    mylabel[i] <- 'L'
  } else if (iris$Petal.Length[i] >= 5.1) {
    mylabel[i] <- 'H'
  } else {
    mylabel[i] <- 'M'
  }
}
print(mylabel)                                  # 레이블 출력
newds <- data.frame(iris$Petal.Length, mylabel) # 꽃잎의 길이와 레이블 결합
head(newds)                                     # 새로운 데이터셋 내용 출력
View(newds)

# ----- 4-12.R -----
sum <- 0
i <- 1
while(i <=100) {
  sum <- sum + i      # sum에 i 값을 누적
  i <- i + 1          # i 값을 1 증가시킴
}
print(sum)


# ----- 4-13.R -----
sum <- 0
for(i in 1:10) {
  sum <- sum + i
  if (i>=5) break
}
sum # 1 + ... + 5


# ----- 4-14.R -----
sum <- 0
for(i in 1:10) {
  if (i%%2==0) next
  sum <- sum + i
}
sum

##### repeat 무한반복

repeat {
  num <- as.numeric(readline(prompt = "숫자를 입력하세요 (0을 입력하면 종료): "))
  if (num == 0) {
    cat("프로그램을 종료합니다.\n")
    break
  }
  cat("입력한 숫자:", num, "\n")
}

# 함수

apply(iris[, 1:4], 1, mean) # 1, margin = 1 즉 row 방향 함수 적용
apply(iris[, 1:4], MARGIN = 1, mean)
apply(iris[, 1:4], 2, mean)
apply(iris[, 1:4], MARGIN = 2, mean)

apply(iris[, 1:4], MARGIN = 2, min)
apply(iris[, 1:4], MARGIN = 2, max)
apply(iris[, 1:4], MARGIN = 2, range)   #최대 최소

mymax <- function(x,y){
  num.max <- x
  if(y> x){
    num.max <- y
  }
  return(num.max)
}
mymax(10, 15)
a <- mymax(20, 15)
b <- mymax(31, 45)
a
b
print(a+b)

mydiv <- function(x, y=2){
  result <-  x/y
  return(result)
}

mydiv(x=10, y=3)
mydiv(10,2)
mydiv(10)

mydiv(x <- 10, y <- 6)
mydiv(x = 10, y =6)


myfunc <- function(x,y)

result <-  myfunc(5, 8)
s <-result$sum
m <-  result$mul
cat('5+8=', s, '\n')
cat('5*8=', m, '\n')

a <- mydiv(20, 4)
b <- mydiv(30, 4)
a
b
a+b
mydiv(mydiv(20, 2), 5)

score <-  c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
score

which(score==69)
which(score>=85)
max(score)
which.max(score)
min(score)
which.min(score)

score[which(score==69)]
score[which.max(score)]

score <- c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
idx <-  which(score <= 60)
idx
score[idx] <-61
score

idx <- which(score >= 80)
score.high <- score[idx]
score.high

idx <-  which(iris$Petal.Length>5.0)
idx
iris.big <-  iris[idx, ]
iris.big

str(iris.big)

m <- matrix(1:9, nrow =3)
m

# 값이 5보다 큰 요소의 위치
result  <- which(m>5, arr.ind = TRUE)
print(result)

result <- which(m > 5, arr.ind = FALSE)
print(result)

result <- which(matrix(11:19, nrow =3) >15, arr.ind = FALSE)
print(result)

str(iris)
str(iris[, 1:4]>5.0)
is.matrix(iris[,1:4] > 5.0)

idx <- which(iris[,1:4]>5.0, arr.ind =TRUE)
idx
iris[,1:4][idx[1, 1], idx[1, 2]]
iris[1, 1]

idx <- which(iris[,1:4]>5.0)
idx
























