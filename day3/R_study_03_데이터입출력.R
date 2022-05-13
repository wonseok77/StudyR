## 데이터 입출력
# 데이터 입력
age <- c(28, 17, 35, 46, 23, 67, 30, 50)
age
# 정보 추출
young <- min(age)
old <- max(age)
# 처리 결과 출력
cat('가장 젊은 사람의 나이는 ', young, '이고,',
'가장 나이든 사람의 나이는', old, '입니다. \n')


install.packages('svDialogs') # 패키지 설치
library(svDialogs)
user.input <- dlgInput('Input income')$res
user.input
income <- as.numeric(user.input) # 문자열을 숫자로
income
tax <- income * 0.05 # 세금 계산
cat('세금: ', tax, '원')
options(scipen = 1)

x <- 26
y <- '입니다'
z <- c(10,20,30,40)
print(x) # 하나의 값 출력
print(y) # 하나의 값 출력
print(z) # 벡터 출력
print(iris[1:5,]) # 데이터프레임 출력
print(x,y) # 두 개의 값 출력(에러 발생)

x <- 26
y <- '입니다'
z <- c(10,20,30,40)
cat(x,'\n') # 하나의 값 출력
cat(y,'\n') # 하나의 값 출력
cat(z,'\n') # 벡터 출력
cat(x,y,'\n') # 두 값을 연결하여 출력
cat(iris[1:5],'\n') # 데이터프레임 출력(에러 발생)



## LAB 체질량 지수 계산
height <- dlgInput('키를 입력하세요(cm)')$res
weight <- dlgInput('몸무게를 입력하세요(kg)')$res


height <- as.numeric(height)
weight <- as.numeric(weight)

height <- height /100
bmi <- weight/(height^2)

cat('입력한 키는 ', height*100, 'cm, 몸무게는 ', weight,'kg 입니다. \n',sep = "")
cat('BMI는 ', bmi, '입니다.', sep = "", '\n 25이상 과체중, 30이상 비만')

# 숫자 천단위 콤마
install.packages('formattable')
library(formattable)

num.data <- c(125000,22500,123.456)
num.data
comma(num.data)


## 파일 입출력
getwd() # 현재 작업 폴더 알아내기 
setwd('C:/Study/StudyR/day3') # 작업 폴더 변경하기
getwd( )

# csv 파일읽기
air <- read.csv('airquality.csv', header=T) # .csv 파일 읽기
head(air)
class(airquality)

# setosa 품종 데이터만 추출
my.iris <- subset(iris, Species=='setosa') 
my.iris

# .csv 파일에 저장하기
# row.names = F해야 행번호가 같이 저장 안됨
write.csv(my.iris, 'my_iris.csv', row.names=F)


## 엑셀 읽고 쓰기
install.packages('xlsx') # 패키지 설치하기
library(xlsx) # 패키지 불러오기
air <- read.xlsx('C:/STUDY/StudyR/day3/airquality.xlsx', header=T,
                 sheetIndex=1) # .xlsx 파일 읽기
head(air) 


## LAB 다이아몬드 정보
library(ggplot2)
str(diamonds)
diamonds.new <- subset(diamonds, cut == 'Premium' & carat >= 2)
diamonds.new
write.csv(diamonds.new, './day3/shiny_diamonds.csv', row.names = F)
diamonds.new
diamonds.load <- read.csv('shiny_diamonds.csv', header = T)
diamonds.new <- subset(diamonds.load, color != 'D')
diamonds.new
library(xlsx)
write.xlsx(diamonds.new, 'shiny_diamonds.xlsx', row.names = F)









