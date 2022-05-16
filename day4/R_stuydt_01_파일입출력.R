
## 데이터 입출력
setwd('C:/STUDY/StudyR/day4') #디렉토리 설정
print("Hellow R!!")


## 실행결과를 저장
sink('result_txt', appen = T) # append-> 이전 문서 다음 뒤, 계속 붙이기
a<- 10
b<- 20
cat('a+b', a+b)
a + b


print('Hey')


sink('result.txt', append = T)

iris
tail(iris)

sink('result.txt', append = T)
sink()


## 텍스트 파일 읽기
air.txt<- read.table('C:/STUDY/StudyR/day4/airquality.txt', header = T, sep = ' ')
air.txt

air.csv<- read.table('C:/STUDY/StudyR/day4/airquality.txt', header = T, sep = ' ')
air.csv


## LAB 체질량 지수 계산
library(svDialogs) # 팝업을 위한 svDialogs 패키지 로드
height <- dlgInput('키 입력 (cm) ')$res # 키 입력 팝업 및 값 저장
weight <- dlgInput('몸무게 입력 (kg) ')$res # 몸무게 입력 팝업/값 저장
height <- as.numeric(height) # 정수형으로 변환
weight <- as.numeric(weight) # 정수형으로 변환
height <- height /100 # 키 단위 변환
bmi <- weight/(height^2) # BMI 계산

sink('bmi.txt', append = T) # append = T : 새로운 결과를 이어붙이기
cat(height*100, weight, bmi)
cat('\n') # 줄바꿈을 위한 입력
sink( )


result <- read.table('./bmi.txt',header = F, sep = " ")
result

names(result) <- c('키','몸무게','체질량지수')
result
write.table(result,'./bmi2.txt', row.names = F)



## 엑셀 패키지
install.packages('readxl') ## 엑셀 읽기용 패키지
library(readxl)

air.xlsx <- read_excel('C:/STUDY/StudyR/day3/airquality.xlsx')
air.xlsx

install.packages('openxlsx') ## 엑셀 쓰기용 패키지
library(openxlsx)

write.xlsx(result, 'bmi_result.xlsx', rowNames = F)



## 실전분석 차정보 조회
library(svDialogs)
library(readxl)
library(openxlsx)
carprice.new <- read.csv('./carprice.csv', header = T)
str(carprice.new)

levels(carprice.new[,1])

input.type <- dlgInput('(차량타입 입력(Compact, Small, Widsize, Large, Sporty, Van)')$res # 자동차 타입
input.city <- dlgInput('최소 시내연비 입력')$res # 시내주형 연비
input.city <- as.numeric(input.city)

result <- subset(carprice.new, Type == input.type & MPG.city >= input.city )
result

write.xlsx(result, './van_result.xlsx', rowNames = F)



## Oracle 연동
install.packages('rJava')
install.packages('RJDBC')
library(rJava)
library(RJDBC)

# DB연결 설정
jdbcDriver <- JDBC(dirverClass = 'oracle.jdbc.OracleDriver',
                   classPath = './day4/ojdbc6.jar')

# PASS
