## 원그래프
# 데이터 입력
favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 'SUMMER',
              'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')
ds <- table(favorite) # 도수분포 계산
ds
pie(ds, main='선호 계절', # 원그래프 작성
    radius=1) 

# 원그래프2
# 코드 9-1에 이어서 실행
install.packages('plotrix')

pie(ds, main='선호 계절',
 col=c('brown','green','red','black'), radius=1 ) # 파이의 크기 지정

library(plotrix)
pie3D(ds, main='선호 계절',
 labels=names(ds), # 파이별 레이블 지정
 labelcex=1.0, # 레이블의 폰트 크기
 explode=0.1, # 파이 간 간격
 radius=1.5, # 파이의 크기
 col=color.4) # 파이의 색 지정


month = 1:12 # 데이터 입력
late = c(5,8,7,9,4,6,12,13,8,6,6,4) # 데이터 입력
plot(month, # x data
     late, # y data
     main='지각생 통계', # 제목
     type='l', # 그래프의 종류 선택(알파벳)
     lty=1, # 선의 종류(line type) 선택
     lwd=1, # 선의 굵기 선택
     xlab='Month', # x축 레이블
     ylab='Late cnt'# y축 레이블
)


month = 1:12
late1 = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)

plot(month, # x 데이터
     late2, # y 데이터
     main='Late students',
 type='b', # 그래프의 종류 선택(알파벳)
     lty=1, # 선의 종류(line type) 선택
     col='red', # 선의 색상 선택
     xlab='Month', # x축 레이블
 ylab='Late cnt' # y축 레이블
,ylim=c(0,15))


lines(month, # x 데이터
      late1, # y 데이터
      type='b', # 선의 종류(line type) 선택
      col='blue') # 선의 색상 선택


install.packages('DAAG')
library(DAAG)
ds <- table(science$like)
pie(ds, main='선호 점수별 비율',
    col=rainbow(length(ds)), # 파이의 색 지정
    radius=1) # 파이의 크기 지정


install.packages('plotrix')
library(plotrix)
ds <- table(science$State)
pie3D(ds, main='주별 학생 비율',
      labels=names(ds), # 파이별 레이블 지정
      labelcex=1.0, # 레이블의 폰트 크기
      explode=0.1, # 파이 간 간격
      radius=1.5, # 파이의 크기
      col=c('brown','green')) # 파이의 색 지정

## LAB 연비시각화
boxplot(mtcars$mpg)
boxplot(mtcars$mpg~mtcars$gear)
boxplot(mtcars$mpg~mtcars$vs)
boxplot(mtcars$mpg~mtcars$am)
grp <- rep('high', nrow(mtcars))
grp[mtcars$wt < mean(mtcars$wt)] <- 'low'
boxplot(mtcars$hp~grp)

# 산점도
wt <- mtcars$wt # 중량 데이터
mpg <- mtcars$mpg # 연비 데이터
plot(wt, mpg, # 2개 변수(x축, y축)
     main='중량-연비 그래프', # 제목
     xlab='중량', # x축 레이블
     ylab='연비(MPG)', # y축 레이블
     col='red', # point의 color
     pch=19) # point의 종류


vars <- c('mpg','disp','drat','wt') # 대상 변수
target <- mtcars[,vars] # 대상 데이터 생성
head(target)
plot(target, # 대상 데이터
     main='Multi plots')



iris.2 <- iris[,3:4] # 데이터 준비
iris.2
levels(iris$Species) # 그룹 확인
group <- as.numeric(iris$Species) # 점의 모양과 색
group # group 내용 출력
color <- c('red','green','blue') # 점의 컬러
plot(iris.2,
     main='Iris plot',
 pch=group,
 col=color[group])


plot(iris.2,
     main='Iris plot',
 pch=c(group),
 col=color[group])


legend(x='bottomright', # 범례의 위치
       legend=levels(iris$Species), # 범례의 내용
       col=c('red','green','blue'), # 색 지정
       pch=c(1:3)) # 점의 모양


## LAB 자동차 선팅 분석

library(DAAG)
str(tinting)
plot(tinting$it,tinting$csoa)


group <- tinting$tint
color <- c('red','green','blue') # 점의 컬러
group
color
tinting$it
tinting
tinting$csoa

group <- as.numeric(tinting$tint)
color <- c('red','green','blue') # 점의 컬러


plot(tinting$it,tinting$csoa,
 pch=c(group),
 col=color[group])


## LAB 호주의 사회복지서비스와 만족도 분석하기
library(DAAG)
str(socsupport) # 데이터의 구조 확인
help(socsupport) # 변수별 의미 확인
library(plotrix)
ds <- table(socsupport$age)
pie3D(ds, main='연령 분포',
 labels=names(ds), # 파이별 레이블 지정
 labelcex=1.0, # 레이블의 폰트 크기
 explode=0.1, # 파이 간 간격
 radius=1.5, # 파이의 크기
 col=rainbow(length(ds))) # 파이의 색 지정



boxplot(socsupport$emotional~socsupport$country,
        main='정서적 지원 제도 비교')

boxplot(socsupport$emotional~socsupport$country,
        main='정서적 지원 제도 비교')

boxplot(socsupport$emotionalsat~socsupport$age,
        main='정서적 지원 제도 만족도 비교',
 col=rainbow(5))

group <- as.numeric(socsupport$gender)
color <- c('blue','red') # 여-blue, 남-red
plot(socsupport[,c('emotionalsat','tangiblesat','age')],
 pch=group,
 col=color[group])













