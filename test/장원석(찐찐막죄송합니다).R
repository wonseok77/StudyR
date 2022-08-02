# 1번문제
  # 1-1.
v <- seq(1.0, 3.0 , 0.2)
v

v2 <- rep(c(1,2,3), times=3)
v2


# 2번문제
max.temp<-c(22,27,26,24,23,26,28)
names(max.temp)<-c('월','화','수','목','금','토','일')

barplot(max.temp, main = '주간 최대 기온', col = rainbow(7),
        xlab = '섭씨', ylab = '요일', horiz = T)


# 3번문제
trees
Girth <- trees$Girth
Volume <- trees$Volume

plot(Girth, Volume, main = '나무 둘레-용적 산점도',
     xlab='둘레', ylab = '용적', las=1, col='skyblue', pch=19)
str(trees)


# 4번문제
setwd('C:/STUDY/StudyR/test') # working 디렉토리 지정
air.txt <- read.table('./airquality.txt', header = T, sep=' ')

       # air.txt <- air.txt[complete.cases(air.txt),]

air.txt[1:5,]


  #색상
color <- rep('#A8DADC',9)

color.9 <- rep('#A8DADC',9)
color.9[1] <- '#1D3557'

color.5 <- rep('#A8DADC',5)
color.5[4] <- '#1D3557'

color.7 <- rep('#A8DADC',7)
color.7[6] <- '#1D3557'

color.52 <- rep('#A8DADC',5)
color.52[2] <- '#1D3557'

  ## 다중그래프
par(mfrow=c(2,2), mar=c(5,4,2,1))  # 화면분할 2x2
par(mfrow=c(2,2))

hist(air.txt$Ozone, 
     main='오존분포',xlab='오존', freq = T, col=color.9) 

hist(air.txt$Temp,
     main = '기온분포',xlab='기온' ,freq = T, breaks = c(seq(50,100,10)), col = color.5)

hist(air.txt$Solar.R,
     main = '자외선분포',xlab='자외선',freq = T, col = color.7)

hist(air.txt$Wind,
     main = '풍량분포', xlab = '풍량',freq = T, breaks = c(seq(0,25,5)), col = color.52)


# 5번문제
par(mfrow=c(1,1))
library(carData)
TitanicSurvival
t <-TitanicSurvival
t <- as.data.frame(t)
head(t)
nrow(t)
t <- t[complete.cases(t$age),]
nrow(t)
s = subset(t, t$survived== 'no')
nrow(s)
head(t)



ts <- t[,c(1,4)]
head(ts)
nrow(ts)

agg = aggregate(ts$survived,by=list(생존자 = ts$passengerClass),FUN = table)
agg <- t(agg)
agg
agg<-as.matrix(agg)
agg
agg.2 <- agg[2:3,]
agg.2
colnames(agg.2) <- c('First','Second','Third')
agg.2

agg.3 <- agg.2[c(2,1),]
agg.3

class(agg.3)
barplot(agg.3, main = '타이타닉 클래스별 생존자',
        col = c('red','Cyan'), horiz = F, las = 1,
        beside = F, legend.text = c('생존자','사망자'),border="black",
        args.legend = list(x='topleft', bty='o',inset=c(0.1,0)))

103+181+146+115+370+131

103+146+370



        