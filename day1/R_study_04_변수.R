## 변수
total <- 5050
total
print(total)
cat('합계는',total)
print('합계는',total) # Error


변수 <- 100
변수 # 출력 안됨
print(변수) # 출력됨

a <- 10
b <- 20
c <- a*b
cat('a' ,'+', 'b', '=',c)
a <- 50
b
c
print(a)


## 변수명
avg
.total
#,total
#`df
# @tata



# R에서 변수특이점은 마침표를 허용한다는 거시다 !
abs <- 80
mid <- 10
mid.sum <- mid+ abs
mid.sum

10/0 # Inf
-10/0 #-Inf
sqrt(-2) # NaN
val <- NULL
val

# 숫자형 변수
age.1 <- 20 # 숫자 저장
age.2 <- 25 # 숫자 저장
print(age.1 + age.2) # 정상 실행

name.1 <- 'John' # 문자저장
print(name.1) # 정상 실행

grade.1 <- '3' # 문자 저장장
print(age.1 + grade.1) # 에러 발생

# 문자형 변수

5 > 3 # 비교연산
2 > 7 # 비교연산
TRUE + TRUE # 산술연산에서 TRUE는 1
a <- TRUE # a에 논리값 TRUE 저장
b <- F # b에 논리값 FALSE 저장
a # a의 내용 출력
b # b의 내용 출력
a + b # 논리값의 산술연산 결과


## 소금물의 농도
## 변수 salt 소금양
## 변수 water 물의양
## 변수 result 농도
## 결과를 "소금 = *, 물 = * ml : 농도 = **%"


salt <- 50
water <- 100
result <- salt / (salt + water) *100
cat("소금 =", salt, ", 물 =", water, " : 농도 =", result, "%")














