## 함수
y <- sqrt(100) # 100의 제곱근을 구하여 변수 y에 저장
y # y에 저장된 값을 출력

d <- c(1,7,4,2,3) # 벡터 d에 5개의 값을 저장
sort(d) # 벡터 d의 값들을 오름차순으로 정렬하여 출력
sort(d,decreasing=TRUE) # 벡터 d의 값들을 내림차순으로 정렬하여 출력


# 문자열 붙이기 함수
str <- paste('good', 'morning', sep=' / ')
str

a <- '나의 나이는'
b <- 20
c <- '입니다'
paste(a, b, c, sep=' ')


## 월별 매출액 분석
sales <- c(750,740,760,680,700,710,850,890,700,720,690,730)
names(sales) <- paste(1:12, '월', sep="")
sales

sales['7월']
sales['1월'] + sales['2월']
max.sales.month <- sort(sales, decreasing = T)
max.sales.month[1]

sum(max.sales.month)
sum(sales[1:6])
sum(sales[7:12])
