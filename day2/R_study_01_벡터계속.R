
total = 50
total

d <- c(1,2,3,4,5,6,7,8)
d
d[1]
d[1:3]
d[c(1,3,5)] # 1, 3, 5번째 자료 출력
d[1:3] # 1, 2, 3번째 자료 출력
d[seq(1,5,2)] # 홀수 번째 자료 출력
d[-2] # 파이썬과 상이, -는 ‘번호 인덱스를 제외하고’의 의미
d[-c(3:5)] # 세 번째에서 다섯 번째 값은 제외


e <- 1:10
e
e <- 10:1
e
f<- seq(10,1,-2)
f

# 1~4월까지 1분기 매출액
sales <- c(640,720,680,540) # 1~4월 매출액
names(sales) <- c('M1','M2','M3','M4') # 매출액에 월을 이름으로 붙임
sales # 1~4월 매출액 출력
sales[1] # 1월 매출액 출력
sales['M2'] # 2월 매출액 출력
sales['m2']
sales[c('M1','M4')] # 1월, 4월 매출액 출력


v1 <- c(1,5,7,8,9)
v1
v1[2] <- 3 # v1의 두 번째 값을 3으로 변경
v1
v1[c(1,5)] <- c(10,20) # v1의 1, 5번째 값을 각각 10, 20으로 변경
v1
v1 <- c(100,200,300) # v1의 내용을 100, 200, 300으로 변경


## 적금 만기 금액 계산하기
customer <- c('kim', 'lee', 'park', 'choi', 'seo')
deposit <- c(5000000, 4500000, 4000000, 5500000, 6000000)
rate <- c(3.5, 3, 4, 5, 4.5)
period <- c(2, 2, 5, 7, 4)

names(deposit) <- customer
names(rate) <- customer
names(period) <- customer

deposit



#최종 코드
who <- 'kim'
sum <- deposit[who] * ( 1 + rate[who] / 100)^ period[who]
sum













