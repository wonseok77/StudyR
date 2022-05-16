## 기본 그래프
favorite_season
f_season<-table(favorite_season)
str(f_season)
f_season

barplot(f_season,main='좋아하는 계절', col = rainbow(4), xlab='계절',ylab='빈도수',horiz = F,
        names = c('가을','봄','여름','겨울'), las=1)


## 중점 막대그래프
# 데이터 입력
age_A <- c(13799, 10974,7979,5000,4250)
age_B <- c(17540,29791,36299,33947,24487)
age_C <- c(991,2195,5366,12980,19007)
ds <- rbind(age_A, age_B, age_C)

ds
colnames <- c('1970','1999','2010','2030','2050')
ds

par(mfrow=c(1,1),mar=c(3,3,3,7))
barplot(ds, main = '인구수 추정', col= rainbow(3), beside=T,legend.text=c('9-14세','15-64세','65세이상'), args.legend = list(x='topright',bty='y',inset=c(-0.1,0)))



ha <- c(54659, 61028, 53307, 46161, 54180)
he <- c(31215, 29863, 32098, 39684, 29707)
mc <- c(15104, 16133, 15222, 13208, 9986)
vs <- c(13470, 14231, 13401, 13552, 13193)
bs <- c(16513, 14947, 15112, 14392, 17091)

ds <- rbind(ha, he, mc, vs, bs)
colnames(ds) <- c('19.1Q', '19.2Q', '19.3Q', '19.4Q', '20.1Q')


barplot(ds, main = '사업부문별 매출액')

barplot(ds, main = '사업부문별 매출액',
        col = c('#003f5c', '#58508d', '#bc5090', '#ff6361', '#ffa600'))

barplot(ds, main = '사업부문별 매출액',
        col = c('#003f5c', '#58508d', '#bc5090', '#ff6361', 
                '#ffa600'), 
        horiz = T, las = 1)

barplot(ds, main = '사업부문별 매출액',
        col = c('#003f5c', '#58508d', '#bc5090', '#ff6361', '#ffa600'),
        horiz = T, las = 1,
        xlab = '억 원', beside = T)

par(mfrow = c(1,1), mar = c(5, 5, 5, 10))


barplot(ds, main = '사업부문별 매출액',
        col = rainbow(5),
        horiz = T, las = 1,
        xlab = '억 원', beside = T,
        legend.text = c('H&A','HE','MC','VS','BS') ,
        args.legend = list(x='topright', bty= 'n' , 
                           inset=c(-0.25,0)))
par(mfrow = c(1,1), mar = c(5,4,4,2)+.1)



## 히스토그램
head(cars)
dist <- cars[,2] # 자동차 제동거리
dist
hist(dist, # data
     main='Histogram for 제동거리', # 제목
     xlab ='제동거리', # x축 레이블
     ylab='빈도수', # y축 레이블
     border='blue', # 막대 테두리색
     col='green', # 막대 색
     las=2, # x축 글씨 방향(0~3)
     breaks=5) # 막대 개수 조절


## LAB 다이아몬드시세
library(Stat2Data)
data(Diamonds)
ds <- Diamonds$PricePerCt

hist(ds, main = '캐럿당 가격 분포' ,
 breaks = 9)

hist(ds, main = '캐럿당 가격 분포',
     breaks = 9,
     xlab = '캐럿당 가격($)', ylab = '빈도수', las = 1)

color <- rep('skyblue',9)


color[3] <- '#1d3557'
hist(ds, main = ' 1캐럿당 가격 분포 ',
breaks = 9,
xlab = '캐럿당 가격($)' , ylab = '빈도수', las = 1,
col = color,
border = '#457b9d')









