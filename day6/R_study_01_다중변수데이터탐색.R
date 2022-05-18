## 다중변수 데이터
# 데이터 확인
head(cars)


# 산점도의 
#(1) 데이터의 확인
head(cars)


#(2) 산점도의 작성
plot(cars$speed, # x축 데이터
     cars$dist, # y축 데이터
     main='자동차 속도와 제동거리', # 그래프 제목
 xlab='속도', # x축 레이블
 ylab='제동거리', # y축 레이블
)


#(3) 상관계수
cor(cars$speed, cars$dist)

# (1) 데이터 확인
st <- data.frame(state.x77) # 매트릭스를 데이터프레임으로 변환
head(st)
# (2) 다중 산점도 작성
plot(st)
# (3) 다중 상관계수
cor(st)


## LAB 경제지표 데이터 분석
str(longley)
head(longley)

df <- longley[,c('GNP', 'Unemployed', 'Armed.Forces', 
                 'Population','Employed')]
df
plot(df)
cor(df)

getwd()
load('./.RData.RData')


## Rdata저장
save(result_sales_dt, file='./result_dt_Rdata')

## 실전분석
install.packages('Ecdat')
library(Ecdat)
str(Hdma)

tbl <- table(Hdma$deny)
tbl
tbl2 <- tbl/ sum(tbl)
tbl2

names(tbl) <- c('승인','거절')
tbl
names(tbl2) <- c('승인','거절')
tbl2

barplot(tbl2, main = '주택담보대출 승인/거절 비율',
        col = c('green','red'), ylim = c(0.0,1.0), las = 1,
        ylab = '비율')

barplot(tbl, main = '주택담보대출 승인/거절 건수',
        col = c('green','red'), 
        ylim = c(0, 2500), las = 1,
        ylab = '비율')

barplot(tbl, main = '주택담보대출 승인/거절 건수',
        col = c('green','red'),
        ylim = c(0,2500), las = 1,
        ylab = '건수')

hist(Hdma$lvr, main = 'LIV', col = rainbow(10), ylim = c(0,1200))

## dir 수입대비 보증금비율, bir 수입대비 주택유지비용
## ccs 고객 신용등급, mcs 대출 신용등급
df <- Hdma[,c('dir','hir','ccs','mcs')]
df

point.color <- c('green','red')
plot(df,col=point.color[Hdma$deny])

