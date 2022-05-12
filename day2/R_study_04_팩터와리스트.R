## 팩터와 리스트
bt <- c('A', 'B', 'B', 'O', 'AB', 'A') # 문자형 벡터 bt 정의
bt.new <- factor(bt) # 팩터 bt.new 정의
bt # 벡터 bt의 내용 출력
bt.new # 팩터 bt.new의 내용 출력


bt[5] # 벡터 bt의 5번째 값 출력
bt.new[5] # 팩터 bt.new의 5번째 값 출력
levels(bt.new) # 팩터에 저장된 값의 종류를 출력
as.integer(bt.new) # 팩터의 문자값을 숫자로 바꾸어 출력


bt.new[7] <- 'B' # 팩터 bt.new의 7번째에 'B' 저장
bt.new[8] <- 'C' # 팩터 bt.new의 8번째에 'C' 저장
bt.new[7]
bt.new[8]
bt.new[9] # 값이 없음

bt.new # 팩터 bt.new의 내용 출력


# 리스트
h.list <- c('balling', 'tennis', 'ski') # 취미를 벡터에 저장
person <- list(name='Tom', age=25, student=TRUE, hobby=h.list, hobby=h.list) # 리스트 생성
person # 리스트에 저장된 내용을 모두 출력
person[[1]] # 리스트의 첫 번째 값을 출력
person$name # 리스트에서 값의 이름이 name인 값을 출력
person[[4]] # 리스트의 네 번째 값을 출력
person[['name']]

person$age
person$student
person$hobby
person$hobby[1]


person[[4]]
person[[4]][2]

## R카페 매출 분석 2
cafe <- list(espresso = c(4, 5, 3, 6, 5, 4, 7),
             americano = c(63, 68, 64, 68, 72, 89, 94),
             latte = c(61, 70, 59, 71, 71, 92, 88),
             price = c(2000, 2500, 3000),
             menu = c('espresso','americano','latte'))
cafe

sale.espresso <- cafe$espresso * cafe$price[1]
sale.espresso
sale.americano <- cafe$americano * cafe$price[2]
sale.americano
sale.latte <- cafe$latte * cafe$price[3]
sale.latte
sale.day<-sale.espresso + sale.americano + sale.latte
sale.day
sale.total <- sum(sale.day)
sale.total
sale.mean.new <-mean(sale.day)



names(sale.day) <- c('Mon','Tue','Wed','Thu','Fry','Sat','Sun')
sale.day



names(sale.day[sale.day>= sale.mean])


cafe$menu <- factor(cafe$menu)
cafe$menu
names(cafe$price) <- cafe$menu
cafe$price




## 월별 감전사고 통계
accident <- c(31,26,42,47,50,54,70,66,43,32,32,22)
names(accident) <- c('M1','M2','M3','M4','M5','M6','M7','M8','M9','M10','M11','M12')
accident
mon <- 1:12
mon.names = paste(mon,'월',sep='')
names(accident)<-mon.names
accident

sum(accident)
max(accident)
min(accident)


accident - (accident * 0.1) # 사고율이 10%감소하면 사고수를 예측
accident*0.9

names(accident[accident >= 50])

mean(accident)

accident[accident >= mean(accident)]
