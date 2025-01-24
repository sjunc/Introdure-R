# 차원 축소
#t-SNE(t-Distributed Stochastic Neighbor Embedding) 고차원 데이터를 저차원(보통 2D 또는 3D)으로 임베딩
if (!require("Rtsne")) {
  install.packages("Rtsne")
  library(Rtsne)
}

# 패키지 로드
library(ggplot2)

# 중복 찾기 (중복값있을 때 차원 축소에서 오류 발생)
ds <- iris[,-5]             # 품종 정보 제외
duplicated_rows <- which(duplicated(ds) | duplicated(ds, fromLast = TRUE))
#                  첨자  중복된위치(ds)    중복된 번호      반대로 찾기
duplicated_rows
ds[duplicated_rows, ]
iris[duplicated_rows, ]
# 결과 출력
print(duplicated_rows)

# 데이터 준비
ds <- iris[,-5]              # 품종 정보 제외(4차원 데이터)
dup <- which(duplicated(ds)) # 중복 데이터 확인 (같은 값이 2개 이므로 하나만 남김)
dup
ds <- ds[-dup,]              # 중복 데이터 제거
str(ds)
ds.y <- iris$Species[-dup]   # 중복을 제외한 품종 정보

# t-SNE 실행 (2차원) 
tsne_2d <- Rtsne(ds, dims=2, perplexity=10)
tsne_2d
# 결과
tsne_2d$Y

# 2차원 축소 결과 시각화(결과가 매번 바뀜)
df.tsne_2d <- data.frame(tsne_2d$Y)
ggplot(df.tsne_2d, aes(x=X1, y=X2, color=ds.y)) +
  geom_point(size=2)

# 3차원 그래피 그리기 

# car(Companion to Applied Regression) 패키지는 
# R에서 회귀 분석과 통계 분석을 위한 도구를 제공하는 
# 강력한 패키지
if (!require("car")) {
  install.packages("car")
  library(car)
}

# R: R 프로그래밍 언어
# GL: OpenGL(Open Graphics Library)의 약자
# 3D 그래프 생성 및 시각화 패지지
# rgl = R Graphics Library
if (!require("rgl")) {
  install.packages("rgl")
  library(rgl)
}

# mgcv는 일반화 가법 모델(Generalized Additive Models, GAM)을 
# 지원하는 R 패키지
# 일반화 가법 모델(GAM, Generalized Additive Models)
if (!require("mgcv")) {
  install.packages("mgcv")
  library(mgcv)
}

# t-SNE 실행 (3차원)
tsne_3d <- Rtsne(ds, dims=3, perplexity=10)
df.tsne_3d <- data.frame(tsne_3d$Y)

# 3차원 산점도 시각화
points <- as.integer(ds.y)
color <- c('red','green','blue')

# 3차원 산점도: 회귀면 없음
scatter3d(x=df.tsne_3d$X1, y=df.tsne_3d$X2, z=df.tsne_3d$X3,
          point.col=color[points], surface=FALSE)

# 3차원 산점도: 회귀면 포함
scatter3d(x=df.tsne_3d$X1, y=df.tsne_3d$X2, z=df.tsne_3d$X3,
          point.col=color[points], surface=TRUE)

## 추가 학습 ############
data(iris)
ds <- iris[, -5]  # 품종 정보 제외
ds <- ds[-which(duplicated(ds)),]             # 중복 데이터 제거
ds.y <- iris$Species[-dup]  # 중복을 제외한 품종 정보

# 작은 perplexity
tsne_small <- Rtsne(ds, dims = 2, perplexity = 5)

# 중간 perplexity
tsne_medium <- Rtsne(ds, dims = 2, perplexity = 10)

# 큰 perplexity
tsne_large <- Rtsne(ds, dims = 2, perplexity = 20)

# 결과 시각화
par(mfrow = c(1, 3))  # 3개의 그래프를 한 화면에 배치
plot(tsne_small$Y, col = ds.y, main = "Perplexity = 5", pch = 19)
plot(tsne_medium$Y, col = ds.y, main = "Perplexity = 10", pch = 19)
plot(tsne_large$Y, col = ds.y, main = "Perplexity = 20", pch = 19)

par(mfrow = c(1, 1))  # 1개의 그래프를 한 화면에 배치


# GPT  Mnist 손글씨 자료에서 2차원과 3차원으로 자원축소해서 산점도를 그리는 코드
# 필요한 패키지 설치 및 로드
install.packages("Rtsne")
install.packages("ggplot2")
install.packages("keras")  # MNIST 데이터셋을 쉽게 다루기 위해

library(Rtsne)
library(ggplot2)
library(keras)

# MNIST 데이터셋 불러오기 (Keras 라이브러리 사용)
mnist <- dataset_mnist()

# 훈련 데이터와 레이블
train_images <- mnist$train$x
train_labels <- mnist$train$y

# 이미지는 28x28 형태이므로, 이를 벡터로 변환하여 2D 데이터로 만들기
train_images_flat <- array_reshape(train_images, c(nrow(train_images), 28*28))

# t-SNE로 2차원 축소
tsne_2d <- Rtsne(train_images_flat, dims = 2, pca = TRUE)

# 데이터프레임으로 변환
tsne_data_2d <- data.frame(tsne_2d$Y, label = as.factor(train_labels))

# 2차원 산점도 그리기
ggplot(tsne_data_2d, aes(x = X1, y = X2, color = label)) +
  geom_point(alpha = 0.6) +
  labs(title = "MNIST Data - 2D t-SNE", x = "t-SNE 1", y = "t-SNE 2") +
  theme_minimal()

# t-SNE로 3차원 축소
tsne_3d <- Rtsne(train_images_flat, dims = 3, pca = TRUE)

# 데이터프레임으로 변환
tsne_data_3d <- data.frame(tsne_3d$Y, label = as.factor(train_labels))

# 3차원 산점도 그리기 (plotly 사용)
install.packages("plotly")
library(plotly)

plot_ly(tsne_data_3d, x = ~X1, y = ~X2, z = ~X3, color = ~label, 
        type = "scatter3d", mode = "markers") %>%
  layout(title = "MNIST Data - 3D t-SNE",
         scene = list(xaxis = list(title = 't-SNE 1'),
                      yaxis = list(title = 't-SNE 2'),
                      zaxis = list(title = 't-SNE 3')))








