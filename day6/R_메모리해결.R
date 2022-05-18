## 메모리 문제 RStudio가 느려질때 해결
# R에 있는 파일을 싹다 지우는
rm(list = ls())
gc() #garbage collection

# tools > Global Options
# General > restore previously open source doc ... at startup 체크해제제

## 2차원 결측값
iris.na <- iris
iris.na[1,2] <- NA
iris.na[1,3] <- NA
iris.na[2,3] <- NA
iris.na[3,3] <- NA
head(iris.na)

## 결측값 확인
for( i in 1:ncol(iris.na)) {
  this.na <- is.na(iris.na[,i])
  cat(colnames(iris.na)[i], '\t', sum(this.na), '\n')
}

col_na <- function(y) {
  return(sum(is.na(y)))
}

na_count <-apply(iris.na, 2, FUN=col_na)
na_count


## 결측값 확인(행별)
rowSums(is.na(iris.na)) # 행별 NA 개수
sum(rowSums(is.na(iris.na))>0) # NA가 포함된 행의 개수
sum(is.na(iris.na)) # 데이터셋 전체에서 NA 개수

## 매트릭스 NA 제외 전처리
head(iris.na)
iris.na[!complete.cases(iris.na),] # NA가 포함된 행들을 나타냄
iris.na[complete.cases(iris.na),] # NA가 포함된 행들을 제거

iris.na

iris.comp <- iris.na[complete.cases(iris.na),]

## LAB 전세계 통계데이터
library(carData)
str(UN)

col_na <- function(y) {
  return(sum(is.na(y)))
}

apply(UN, 2, FUN=col_na)

mean(UN$lifeExpF, na.rm=T) # NA 제외하고 계산

tmp <- UN[,c('pctUrban','infantMortality')]
tmp <- tmp[complete.cases(tmp),] # NA 제거
colMeans(tmp)

tmp <- subset(UN, region=='Asia') # 아시아 국가 추출
mean(tmp$fertility, na.rm=T)






## 정렬
v1 <- c(1,7,6,8,4,2,3)
v1 <- sort(v1) # 오름차순
v1
v2 <- sort(v1, decreasing=T) # 내림차순
v2

name <- c('정대일','강재구','신현석','홍길동')
sort(name) # 오름차순
sort(name, decreasing=T) # 내림차순

name <- c('정대일','강재구','신현석','홍길동')
order(name) # 오름차순
order(name, decreasing=T) # 내림차순
idx <- order(name)
name[idx] # 오름차순 정렬



## 데이터프레임 정렬
iris
sort(iris$Sepal.Length)


head(iris)
order(iris$Sepal.Length)
iris[order(iris$Sepal.Length),] # 오름차순으로 정렬
iris[order(iris$Sepal.Length, decreasing=T),] # 내림차순으로 정렬
iris.new <- iris[order(iris$Sepal.Length),] # 정렬된 데이터를 저장
head(iris.new)

# 정렬 기준이 2개인 경우
iris[order(iris$Species, decreasing=T, iris$Petal.Length),]


library(carData)
str(Highway1)


Highway1[order(Highway1$rate, decreasing = T),]

tmp <- Highway1[order(Highway1$len, decreasing = T),'len']
tmp # 구간별 길이를 내림차순으로 정렬한 결과
sum(tmp[1:10])


tmp <- Highway1[order(Highway1$adt),c('adt','rate')]
tmp
tmp[1:10,]


tmp <- Highway1[order(Highway1$slim, decreasing = T),
                c('len','adt','rate')]
tmp
tmp[1:5,]

