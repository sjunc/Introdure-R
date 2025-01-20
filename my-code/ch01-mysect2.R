d <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
mean(d)
max(d)
min(d)
sort(d)
sort(d, decreasing = FALSE)
sort(d, decreasing = TRUE)
v1 <- median(d)
v1
v2<-sum(d)/length(d)
v2

sort(d, decreasing <- TRUE)

help(sort)
#code 2-20
d
d>=5
d[d>=5]
sum(d>5)
sum(d[d>5])
d == 5

condi <- d>5 & d<8
d[condi]

# 리스트와 팩터
# 리스트는 다양한 데이터 형식을 담을 수 있는 1차원 구조
ds <- c(90, 85, 70, 64)
ds
my.info <- list(name = "Tom", age = 60, status = TRUE, score =ds)
my.info
str(my.info)             #str 내부구조 출력

my.info[[1]]             # 리스트의 첫 번째 값을 출력
my.info$name             # 리스트에서 값의 이름이 name인 값 출력
nn <- my.info[[4]]       # 리스트 네 번째 값을 nn에 대입
nn                       # 리스트 네 번째 값 출력
my.info$score

my.info[1]                # 반환값: 첫 번째 값의 리스트
aa <-my.info[3]           # 반환값: 세 번째 값의 리스트
str(nn)                   # [[]]과 [] 자료 구조 확인
str(aa)                   # [[]]은 백터고 []은 list 형임 

# 팩터 생성
gender <- factor(c("Male", "Female", "Male", "Female"))

# 출력
print(gender)
# Levels: Female Male

# 팩터: 벡터의 일종으로서 값의 종류가 정해져 있는 범주형 자료의 저장에 사용
bt <- c('A','B','B','O','AB', 'A')
bt.new <- factor(bt)
bt
bt.new
bt[5]
bt.new[5]
levels(bt.new)
levels(bt.new) <- c("A", "AB", "B", "O", "RH-")
as.integer(bt.new)
bt.new[7] <- 'B'
bt.new[8] <- 'RH-'
# bt.new[8] <- 'C'      #NA 생성됨
bt.new

