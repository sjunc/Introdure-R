#code 2-1

2 + 3
(4 - 1) * 2
9^9
15 %% 7
15 / 7

#code 2-2

3**4
3^4

#code 2-3

log(10) + 5
sqrt(81)
max(39,52,23)
min(39, 52, 21)
factorial(5)

#code 2-4
a <- 10
b <- 10
c <- a + b
print(c)

#code 2-5
d <- a * b / c
print(d)
print(a + b + c + d)

#code 2-6 상수
TRUE
FALSE
# false 에러
NULL
NA
NaN
Inf
-Inf

'python'
"python"

a <- "B"
b <- 3

# print(a*b) 에러

#벡터의 이해 
# c 백터 생성 combine 함수 
x <- c(1,2,3)
y <- c("a", "b", "c")
z <- c(TRUE, TRUE, FALSE, TRUE)

w <- c(1, 2, 3, "A", "B", "C")
print(w)# 자료형은 통일되야 하므로 통일시킴 

v <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, "A", "B", "C")
print(v)  

# 콘솔창에서 처음에 나오는 숫자는 순번

v1 <- 50:90
print(v1)
v2 <-  c(1, 2, 3, 50:90)
print(v2)

#help 단어 선택후 f1 어려우면 gpt
#req 일정한 간격의 숫자로 이루어진 벡터 생성
v3  <- seq(1, 101, 2)
print(v3)
v4 <- seq(0.1,1.0,0.1)
v4
v5 <- rep(1,times=5) # 1을 5번 반복
v5
v6 <- rep(1:5,times=3) # 1에서 5까지 3번 반복
v6
v7 <- rep(c(1,5,9), times=3) # 1, 5, 9를 3번 반복 159159159
v7
v8 <- rep(c(1, 5, 9), each = 3) # 1, 5, 9를 각각 3번 반복 111 555 999
v8

#code 2-12
score <- c(90, 85, 70)                         # score <- c("John" = 90, "Max" = 85, "Brian" = 70)
score
names(score)
names(score) <- c("John", "Max", "Brian")
names(score)

score
score[2]
score["Max"]

#code 2-13
d <- c(1, 4, 5, 6, 8)
# d[0]
d[1]
d[2]
d[3]
d[4]
d[5]
d[6]  # NA 값 없음

#code 2-14
d[c(1, 3, 5)] #1, 3, 5 번째 값 출력
d[v5]
d[c(1, 3)]
d[1: 3]   # 1부터 3번째 값
d[seq(1,5,2)] # 홀수 번째 값 출력
d[-2] # 2번째 값 제외하고 출력
d[-c(3:5)] # 3~5번째 값은 제외하고 출력

#code 2-15
GNP <- c(2090,2450,960)
GNP
names(GNP) <- c("Korea","Japan","Nepal")
GNP
GNP[1]
GNP["Korea"]
GNP[c("Korea","Nepal")] 
GNP["China"]

#code 2-16 수정
v1 <- c(1,5,7,8,9)
v1
v1[2] <- 3 # v1의 2번째 값을 3으로 변경
v1
v1[c(1,5)] <- c(10,20) # v1의 1, 5번째 값을 각각 10, 20으로 변경
v1
















