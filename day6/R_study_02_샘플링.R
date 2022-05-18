## 샘플링

x <- 1:100
x
x <- sample(x , size= 5, replace = F)
x


idx <- sample(1:nrow(iris), size=50, replace=F)
idx
iris.50 <- iris[idx,] # 50개의 행 추출
iris.50
dim(iris.50) # 행과 열의 개수 확인
head(iris.50)


# 조합
combn(1:5,3) # 1~5에서 3개를 뽑는 조합
x <- c("red","green","blue","black","white")
com <- combn(x,2) # x의 원소를 2개씩 뽑는 조합
com
for(i in 1:ncol(com)) { # 조합을 출력
  cat(com[,i], "\n")
}




## 편두통 데이터

library(carData)
str(KosteckiDillon)

tot.mean <- mean(KosteckiDillon$dos)
tot.mean

for (rate in (1:5)*0.1) {
  set.seed(100)
  idx <- sample(nrow(KosteckiDillon), nrow(KosteckiDillon)*rate)
  idx
  sam.data <- KosteckiDillon[idx,'dos'] # 샘플링 데이터 추출
  sam.data
  tmp.mean <- mean(sam.data) # 샘플링 데이터 평균
 cat('비교:', rate,'% 평균치료일수 =', tot.mean, ' + ' , tot.mean-tmp.mean, '\n')
}


cbn <- combn(1:5, 3)
cbn
ncol(cbn) # 조합의 개수



##
agg.result <- aggregate(iris[,-5], by = list(iris$Species), FUN = mean)
agg.result

summary(iris)


## LAB 2011 캐나다 전국 선거 통계

library(carData)
data('CES11') # 데이터셋 불러오기
str(CES11)

table(CES11$abortion) # 반대, 찬성 인원수
table(CES11$abortion)/nrow(CES11) # 반대, 찬성 비율





agg <- aggregate(CES11[,'abortion'], by=list(성별=CES11$gender), 
                 FUN=table)
agg
agg.2 <- agg[,2] # Yes/No 빈도수 부분만 추출
agg.2
agg.2[1,] <- agg.2[1,]/sum(agg.2[1,]) # female Yes/No 비율 계산
agg.2[2,] <- agg.2[2,]/sum(agg.2[2,]) # male Yes/No 비율 계산
rownames(agg.2) <- agg[,1]
agg.2

agg <- aggregate(CES11[,'abortion'], by=list(지역=CES11$urban), 
                 FUN=table)
agg
agg.2 <- agg[,2] # Yes/No 빈도수 부분만 추출
agg.2[1,] <- agg.2[1,]/sum(agg.2[1,]) # 도시외 지역 Yes/No 비율
agg.2[2,] <- agg.2[2,]/sum(agg.2[2,]) # 도시지역 Yes/No 비율 계산
rownames(agg.2) <- agg[,1]
agg.2

## 실전분석 칠레 대통력 선거 여론조사
library(carData)
help(Chile) # 데이터셋에 대한 도움말 확인
str(Chile)

sum(is.na(Chile)) # 결측값 개수 확인
ch <- Chile[complete.cases(Chile),] # 결측값 제거
ch

set.seed(100)
idx <- sample(nrow(ch), nrow(ch)*.6) # 60% 샘플링
ch60 <- ch[idx, ]
dim(ch60)


agg <- aggregate(ch60[,'population'], by=list(지역=ch60$region), 
                 sum)
agg[order(agg$x, decreasing = T),]

table(ch60$vote)

no.people <- table(ch60$sex) # 여성, 남성 응답자수
no.people
tmp <- subset(ch60, vote=='Y') # 찬성만 추출
tmp
agg <- aggregate(tmp[,'vote'], by=list(성별=tmp$sex), length)
yes.ratio <- agg$x / no.people # 찬성 비율 계산
yes.ratio


no.region <- table(ch60$region) # 지역별 응답자수
tmp <- subset(ch60, vote=='Y') # 찬성만 추출
agg <- aggregate(tmp[,'vote'], by=list(지역=tmp$region), length)
yes.ratio <- agg$x / no.region # 찬성 비율 계산
yes.ratio