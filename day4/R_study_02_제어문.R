## 제어문
# if문
job.type <- 'A'

if (job.type == 'B') {
  bonus <- 200
  
} else {
  bonus <- 100
}


print(bonus)



a <- 10; b <- 20
if (a>5 & b>5) {
  print(a*b)
}

a<-10; b<-2-

if (a>b) {
  c<-a
} else {
  c <- b
}


c <- ifelse(a>b,a,b)
c


## 반복문
for (i in 1:5) {
  cat(i,"")
}
cat('\n')

for (x in 2:9) {
  for (y in 1:9 ) {
    cat('2 x', y , '=' , 2*y , '\n')
  }
  cat('\n')
}


for (i in 1:20) {
  if ( i %% 2 == 0) {
    cat(i,'')
  }
}


## iris 꽃잎 크기 분류
norow <- nrow(iris) # iris의 행의 수
mylabel <- c() # 비어있는 벡터 선언

for(i in 1:norow) {
  if (iris$Petal.Length[i] <= 1.6) { # 꽃잎의 길이에 따라 레이블 결정
    mylabel[i] <- 'L'
} else if (iris$Petal.Length[i] >= 5.1) {
mylabel[i] <- 'H'
  } else {
    mylabel[i] <- 'M'
}
}
print(mylabel) # 레이블 출력
newds <- data.frame(iris$Petal.Length, mylabel, iris$Species)# 꽃잎 길이와 레이블 결합
head(newds) # 새로운 데이터셋 내용 출력


## while문
sum <- 0
i <- 1
while (i <= 100) {
  sum <- sum + i
  i <- i + 1
}
print(sum)


## 사용자 정의 함수

mymax <- function(x,y) {
  num.max <- x
  if (y>x) {
    num.max <- y
  }
  return(num.max)
}

max(1,2)
mymax(1,3)
max(1,3,5,6,7)
mymax(1,3,5)


mydiv <- function(x, y=2) {
  result <- x/y
  return(result)
}

mydiv(10,3)
mydiv(10)

myfunc <- function(x,y) {
  val.sum <- x+y
  val.mul <- x*y
  return(list(sum=val.sum, mul=val.mul)) 
}
result <- myfunc(5,8)
s <- result$sum # 5와 8의 합
m <- result$mul # 5와 8의 곱
cat('5+8 =', s, '\n')
cat('5*8 =', m, '\n')


## 내장함수 apply()
apply(iris[,1:4], 1 ,mean)
apply(iris[,1:4], 2 ,mean)
      