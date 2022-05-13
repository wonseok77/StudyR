## 기본 그래프
# 막대그래프 = Bar chart
favorite_season <-c('WINTER','SUMMER','SPRING','SUMMER','SUMMER','FALL',
                    'FALL','SUMMER','SPRING','SPRING')

favorite_season
ds <- table(favorite_season) #도수분포포
ds
barplot(ds,main='좋아하는 계절')
barplot(ds,main='좋아하는 계절',col=rainbow(4),
        xlab = '계절', ylab = '빈도수')

barplot(ds, main='좋아하는 계절', col = rainbow(4),
        xlab = '계절',ylab='빈도수',horiz=T,
        names = c('가을','봄','여름','겨울'), las =3)


