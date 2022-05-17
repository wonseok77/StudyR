install.packages('carData')
library(carData)

# (1) 데이터 준비
room.class <- TitanicSurvival$passengerClass # 선실 정보
room.class

# (2) 도수분포 계산
tbl <- table(room.class)
tbl
sum(tbl) # 전체 탑승객수


# (3) 막대그래프 작성
barplot(tbl, main='선실별 탑승객',
 xlab= '선실 등급' ,
        ylab= '탑승객수',
 col=c('blue', 'green', 'yellow'))


#(4) 원그래프 작성
tbl/sum(tbl) # 선실별 탑승객 비율
par(mar=c(1,1,4,1))
pie(tbl, main='선실별 탑승객',
 col=c('blue', 'green', 'yellow'))
par(mar=c(5.1,4.1,4.1,2.1))


# (1) 데이터 준비
grad <- state.x77[,'HS Grad'] # 주별 고등학교 졸업률
Grad

# (2) 사분위수
summary(grad)
var(grad) # 분산
sd(grad) # 표준 편차

# (3) 히스토그램
hist(grad, main='주별 졸업률',
                  xlab='졸업률',
 ylab='주의 개수',
                  col='orange')

# (4) 상자그림
boxplot(grad, main='주별 졸업률',
        col='orange')

# (5) 졸업률이 가장 낮은 주
idx <- which(grad==min(grad))
grad[idx]

# (6) 졸업률이 가장 높은 주
idx <- which(grad==max(grad))
grad[idx]

# (7) 졸업률이 평균 이하인 주
idx <- which(grad<mean(grad))
grad[idx]


## 74 - 79 영국 폐질환 사망자 데이터
getwd()

# (1) 데이터 준비
ds <- read.csv('./day5/fdeaths.csv', row.names='year')
ds

# (2) 선그래프 작성
my.col <- c('black', 'blue','red', 'green','purple','dark 
gray')
my.lty <- 1:6
plot(1:12,                      # x data
     ds[1,],                    # y data(1974년 데이터)
     main='월별 사망자 추이',   # 그래프 제목
 type='b',                      # 그래프 종류
 lty=my.lty[1],                 # 선의 종류
 xlab='Month',                  # x축 레이블
     ylab='사망자수',
 ylim=c(300,1200),              # y축 값의 범위
 col=my.col[2],                 # 선 색상
 las = 1,                       # y축 가로쓰기기
 lwd = 2                        # 라인두께께
 )# y축 레이블

for(i in 2:6) {
  lines(1:12,                   # x data
        ds[i,],                 # y data(1975~1979)
        type='b',               # 그래프 종류
        lty=my.lty[i],
        lwd = 2,                       # 선의 종류
        col=my.col[i]                  # 선의 색
 )
}


legend(x='topright', # 범례의 위치
 lty=my.lty, # 선의 종류
 lwd = 2,
 col=my.col[1], # 선의 색
 legend = rownames(ds), # 범례의 내용
 inset = c(0,0)
 )

rownames(ds)




## 자동차 가격 및 성능 데이터 분석
library(DAAG)
str(carprice)
carprice$Price # 자동차 가격

range(carprice$Price) # 값의 범위
mean(carprice$Price) # 값의 평균


hist(carprice$Price, main='자동차 가격',
 xlab='가격대',
     ylab='빈도',
 col='green')


tbl <- table(carprice$Type)
barplot(tbl, main='자동차 타입별 빈도수',
 xlab='타입',
        ylab='빈도수',
 col=rainbow(length(tbl)))


idx <- which(carprice$Price==max(carprice$Price))
carprice[idx, c('Type','Price')]

summary(tbl)






