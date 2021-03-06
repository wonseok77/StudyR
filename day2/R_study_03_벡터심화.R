## 벡터 심화


## 산술연산
d <- c(1,4,3,7,8)
2*d
d-5
3*d + 4


x <- c(1,2,3,4)
y <- c(5,6,7,8)
x + y # 대응하는 원소끼리 더하여 출력
x * y # 대응하는 원소끼리 곱하여 출력
z <- x + y # x, y를 더하여 z에 저장
z

## 벡터와 벡터 연산

m <- c(x, y) # x, y의 원소들을 결합하여 m에 저장
m
n <- c(y, x) # y, x의 원소들을 결합하여 n에 저장
n
p <- c(x, y, 90, 100) # x, y의 원소들과 90, 100을 결합하여 p에 저장
p

## 범주형 연산
v1 <- c(1, 2, 3, 4)
v2 <- c('John', 'Jane', 'Tom')
v3 <- c(v1, v2) # v1, v2의 원소들을 결합하여 v3에 저장
v3


d <- c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d) # 오름차순 정렬
sort(d, decreasing = FALSE) # 오름차순 정렬
sort(d, decreasing = TRUE) # 내림차순 정렬
v1 <- median(d)
v1
v2 <- sum(d)/length(d)
v2

var(d)
sd(d)


# 논리연산자
d <- 1:9
d>=5 # d 원소 각각이 >=5인지 검사
d[d>5] # 6 7 8 9
sum(d>5) # 5보다 큰 값의 개수를 출력
sum(d[d>5]) # 5보다 큰 값의 합계를 출력
d==5
condi <- d > 5 & d < 8 # 조건을 변수에 저장
d[condi] # 조건에 맞는 값들을 선택



# 카페매출분석
espresso <- c(4, 5, 3, 6, 5, 4, 7)
americano <- c(63, 68, 64, 68, 72, 89, 94)
latte <- c(61, 70, 59, 71, 71, 92, 88)
price <- c(2000, 2500, 3000)
names(price) <- c('esp','ame','lat')
sale.espresso <- price['esp'] * espresso
sale.americano <- price['ame'] * americano
sale.latte <- price['lat'] * latte

sale.espresso
sale.americano
sale.latte

sale.day <- sale.espresso + sale.americano + sale.latte
names(sale.day) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')

sale.day

sum(sale.day)
sale.mean <- mean(sale.day)
names(sale.day[sale.day >= sale.mean])



cat('총매출액', sum(sale.day), '원')
sale.sum = sum(sale.day)
sale.mean = mean(sale.day)
sale.mean

cat('평균매출액', sale.mean, '원')
sale.day
result <- names(sale.day[sale.day >= sale.mean])
cat('평균매출액보다 매출액이 높은 요일은', result)



cat('총매출액', sum(sale.day), '원')
cat('평균매출액', sale.mean, '원')
cat('평균매출액보다 매출액이 높은 요일은', result)

