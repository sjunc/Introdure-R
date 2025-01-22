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

# airquality
head(airquality)
str(airquality)

colnames(airquality)
na.cnt <- apply(airquality, 2, FUN = function(x) sum(is.na(x)))
na.cnt[na.cnt > 0]
