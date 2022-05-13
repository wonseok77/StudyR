## 매트릭스 계속

z <- matrix(1:20, nrow=4, ncol = 5, byrow = T)
z

x <- c(20,25,30,35)
x
m1 <- cbind(z,x) # 열기준 결합
m1

y <- 36:41
y

m2 <- rbind(m1,y) # 행기준 결합합
m2



#값추출
m2[1,3]
m2[1,6]
m2[1,7]

z[1,6]
z[1,5]
z[4,5]

z[,5]
z[2,1:3] # 2행의 값 중 1~3열에 있는 값
z[1,c(1,2,4)] # 1행의 값 중 1, 2, 4열에 있는 값
z[1:2,] # 1~2행에 있는 모든 값
z[,c(1,4)] # 1, 4열에 있는 모든 값



score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60), nrow=4)
score
rownames(score) <- c('John','Tom','Mark','Jane')
colnames(score) <- c('English','Math','Science')
score

score['John','Math']
score['Math','Tom'] # Error

score['Tom',]
score[,'Science']


burger <- matrix(c (514, 917, 11,
                    533, 853, 13,
                    566, 888, 10),
                 nrow = 3,
                 byrow = T)

burger # 매트릭스의 내용 확인
rownames(burger) <- c('Mcdonald', 'LotteRia', 'BurgerKing')
colnames(burger) <- c('kcal', 'na', 'fat')
burger # 매트릭스의 내용 확인


burger['Mcdonald', 'na'] # M사의 나트륨 함량
burger['Mcdonald', ] # M사의 모든 영양 정보
burger[, 'kcal'] # 모든 브랜드의 칼로리 정보


# 데이터 프레임
city <- c("Seoul","Tokyo","Washington") # 문자로 이루어진 벡터
rank <- c(1,3,2) # 숫자로 이루어진 벡터
city.info <- data.frame(city, rank) # 데이터프레임 생성
city.info # city.info의 내용 출력


## iris 데이터셋
iris
head(iris)
iris[,c(1:2)] # 1~2열의 모든 데이터
iris[,c(1,3,5)] # 1, 3, 5열의 모든 데이터
iris[,c("Sepal.Length","Species")] # 1, 5열의 모든 데이터
iris[1:5,] # 1~5행의 모든 데이터
iris[1:5,c(1,3)] # 1~5행의 데이터 중 1, 3열의 데이터

## LAB2 햄버거 영양정보 2
kcal <- c(514, 533, 566)
na <- c(917, 853, 888)
fat <- c(11, 13, 10)
menu <- c('새우', '불고기', '치킨')

burger <- data.frame(kcal, na, fat, menu)
burger

rownames(burger) <- c('맥도날드', '롯데리아', '버거킹')
burger


burger['맥도날드', 'na'] # M사의 나트륨 함량
burger['맥도날드', ] # M사의 모든 영양 정보
burger[, 'kcal'] # 모든 브랜드의 칼로리 정보
burger[c('맥도날드','버거킹'),'menu'] # M과 B사의 menu 정보


dim(iris) # 행과 열의 개수 보이기
nrow(iris) # 행의 개수 보이기
ncol(iris) # 열의 개수 보이기
colnames(iris) # 열 이름 보이기, names() 함수와 결과 동일
head(iris) # 데이터셋의 앞부분 일부 보기
tail(iris) # 데이터셋의 뒷부분 일부 보기

colSums(iris[,-5]) # 열별 합계
colMeans(iris[,-5]) # 열별 평균
rowSums(iris[,-5]) # 행별 합계
rowMeans(iris[,-5]) # 행별 평균


z <- matrix(1:20, nrow=4, ncol=5)
z
t(z) # 행과 열 방향 변환

IR.1 <- subset(iris, Species=='setosa')
IR.1
IR.2 <- subset(iris, Sepal.Length>5.0 &
                 Sepal.Width>4.0)
IR.2
IR.2[, c(2,4)] # 2열과 4열의 값만 추출


a <- matrix(1:20,4,5)
b <- matrix(21:40,4,5)
a
b
2*a # 매트릭스 a에 저장된 값들에 2를 곱하기
a+b
a <- a*3
b <- b-5


class(iris) # iris 데이터셋의 자료구조 확인
class(state.x77) # state.x77 데이터셋의 자료구조 확인
is.matrix(iris) # 데이터셋이 매트릭스인지 확인하는 함수
is.data.frame(iris) # 데이터셋이 데이터프레임인지 확인하는 함수
is.matrix(state.x77)
is.data.frame(state.x77)


## LAB 벗나무 판매
class(trees)
str(trees)
girth.mean <- mean(trees$Girth)


candidate <- subset(trees, Girth >= girth.mean & Height > 80 & 
                      Volume > 50)
candidate
nrow(candidate)


# 종업원 팁계산
install.packages("reshape2")
library(reshape2)
tips

is.matrix(tips)
class(tips)

head(tips)
str(tips)

table(tips$day)

dinner <- subset(tips, time == 'Dinner')

lunch <- subset(tips, time == 'Lunch')

table(dinner$day)
table(lunch$day)

colMeans(dinner[c('total_bill', 'tip', 'size')])
colMeans(lunch[c('total_bill', 'tip', 'size')])

tip.rate <- tips$tip/tips$total_bill # 손님별 팁의 비율

mean(tip.rate) # 평균 팁의 비율


