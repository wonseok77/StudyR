par(mfrow=c(2,2), mar=c(3,3,4,2)) # 화면 분할(2x2)


hist(iris$Sepal.Length, # 그래프 1
     main='Sepal.Length' ,
 col='orange')

barplot(table(mtcars$cyl), # 그래프 2
        main='mtcars',
 col=c('red','green','blue'))

barplot(table(mtcars$gear), # 그래프 3
        main='mtcars',
 col=rainbow(3), # 레인보우 팔레트 사용
 horiz=TRUE)

pie(table(mtcars$cyl), # 그래프 4
 main='mtcars',
        col=topo.colors(3), # topo 팔레트 사용
        radius=2)

par(mfrow=c(1,1), mar=c(5,4,4,2)+.1) # 화면 분할 취소


## LAB 정책 지지도 그래프 그리기

install.packages('carData')
library(carData)
ds <- Chile
colors <- rainbow(20) # 레인보우 팔레트에서 20색 선택

par(mfrow = c(2,3)) #화면분할

barplot(table(ds$region), main = '지역별 분포', col=colors[1:5])
barplot(table(ds$sex), main = '성별 분포', , col=colors[6:7])
barplot(table(ds$education), main = '교육수준별 분포', 
        col=colors[8:10])

hist(ds$age, breaks = 6, main = '연령', xlab = 'age', col=colors[1:6])
hist(ds$income, breaks = 4, main = '수입', xlab = 'income',
     col=colors[11:14])
hist(ds$statusquo, breaks = 9, main = '정책 지지도', xlab = 'support',
     col=colors[15:20])


## 종업원 팁 정보 그래프
install.packages('reshape2')
library(reshape2)
str(tips)


par(mfrow = c(2,2))
barplot(table(tips$sex), main = 'gender')
barplot(table(tips$day), main = 'Day of the week')
barplot(table(tips$time), main = 'time')
barplot(table(tips$size), main = 'size')
par(mfrow = c(1,1))


## 색상 
color.6 <- rep('#a8dadc', 6)
color.6[2] <- '#1d3557'
color.6

color.4 <- rep('#a8dadc', 4)
color.4[2] <- '#1d3557'
color.4[3] <- '#457b9d'
color.4

par(mfrow = c(2,2))
barplot(table(tips$sex), main='gender', col=c('#a8dadc', '#1d3557'))
barplot(table(tips$day), main='Day of the week', col=color.4)
barplot(table(tips$time), main='time', col=c('#1d3557', '#a8dadc'))
barplot(table(tips$size), main='size', col=color.6)
par(mfrow = c(1,1))


tips.new <- tips
tips.new$perHead <- tips.new$total_bill / tips.new$size


par(mfrow = c(1,3))
hist(tips.new$perHead, main = '1인당 주문 금액', breaks = 5, 
     xlab = '단위:달러')
hist(tips.new[tips.new$time == 'Lunch', 'perHead'],
     main = '1인당 주문 금액(런치)', breaks = 4, xlab = '단위:달러')
hist(tips.new[tips.new$time == 'Dinner', 'perHead'],
     main = '1인당 주문 금액(디너)', breaks = 4, xlab = '단위:달러')
par(mfrow = c(1,1))



color.5 <- rep('#a8dadc', 6)
color.5[2] <- '#1d3557'
par(mfrow = c(1,3))
hist(tips.new$perHead,
 main = '1인당 주문 금액', xlab = '단위:달러' ,
breaks = 5, col = color.5)




hist(tips.new[tips.new$time == 'Lunch','perHead'], main = '1인당 주문 금액(런치)', xlab = '단위:달러',
     breaks = 4, col = color.5)



hist(tips.new[tips.new$time == 'Dinner', 'perHead'],
     main = '1인당 주문 금액(디너)', xlab = '단위:달러',
 breaks = 4, col = color.5)
par(mfrow = c(1,1))

res.lunch
res.dinner
res <- rbind(lunch = c(0, res.lunch$counts), dinner = 
               res.dinner$counts[1:6])
colnames(res) <- res.dinner$breaks[2:7]


barplot(res, main = '식사 시간에 따른 팁 비율 분포',
        col = c('#1d3557', '#a8dadc'),
        legend.text = c('Lunch', 'Dinner'))




