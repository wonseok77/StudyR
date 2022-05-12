##벡터 = 파이썬 리스트
## 학생 성적

score <- c(68, 95, 83, 76, 90, 80, 85, 91, 82, 70)
mean(score) # 평균 출력


score

v <- 51:80
v

x <- c(1,2,3) # 숫자형 벡터
y <- c('a','b','c') # 문자형 벡터
z <- c(TRUE,TRUE,FALSE,TRUE) # 논리형 벡터
x # 벡터 x에 저장된 값을 출력
y # 벡터 y에 저장된 값을 출력
z # 벡터 z에 저장된 값을 출력

w <- c(1,2,'3','4',5) # 문자 하나라도 들어가면
# 모두 문자로 전환
w
x_1 <- c('7',8)

v1 <- 51:90
v1
v2 <- c(1,2,5, 50:90)
v2

v3 <- seq(1,100,3)
v3

## 장점 !!
v4 <- seq(0.1, 1.0 , 0.1)
v4

# 반복
v5 <- rep(1,times=5)
v6 <- rep(1:5,times=3)
v5
v6
v7 <- rep(c(1,5,9), times=3)
v7
v8 <- rep(c('a','b','c'), each = 3)
v8

## 벡터 이름붙이기
absent <- c(8,2,0,4,1) # absent 벡터에 결근 인원수 저장
absent # absent 벡터의 내용 출력

names(absent) # absent 벡터의 값들의 이름을 확인
names(absent) <- c('Mon','Tue','Wed','Thu','Fri') # 값들의 이름을 입력
absent # absent 벡터의 내용 출력
names(absent) # absent 벡터의 값들의 이름을 확인

absent[0] #안나옴
absent[1]
absent[2]ㄴㄴ
absent[3]
absent[4]
absent[5]
absent[6] #결측값 NA 표시 Error는 안남



