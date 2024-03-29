## 웹 크롤링
# 1. rvest 패키지 설치
install.packages('rvest')
library(rvest)
library(stringr)

# 2. 보배드림 URL 검색 -> URL가져오기
url <- 'https://www.bobaedream.co.kr/cyber/CyberCar.php?gubun=K&search_cat=C4_s0&page=1&order=S11&view_size=70'
usedCar <- read_html(url)

# 3. HTML p.tit ellipsis
carInfos <- html_nodes(usedCar, css = '.mode-cell.title')
carInfos


# 4. tit.ellipsis 안에 있는 나머지 요소를 제거

carTitles <- carInfos %>% html_nodes ('.tit.ellipsis ') %>% html_text()
carTitles

# 5. 불필요한 요소 제거
carTitles <- gsub('  ','',carTitles)
carTitles
carTitles <- gsub("\r\n\t", '', carTitles)
carTitles


# 4. 연식 가져오기
carYears <- html_nodes(usedCar, css = '.mode-cell.year')
carYears


# 7. css text 있는 정보 가져오기
carYears <- carYears %>% html_nodes ('.text') %>% html_text()
carYears <- carYears[2:length(carYears)]
carYears

# 8. 연료 정보 갖오기
carFuels <- html_nodes(usedCar, css= '.mode-cell.fuel')
carFuels

# 9. css text 정보 가져오기
carFuels <- carFuels %>% html_nodes ('.text') %>% html_text()
carFuels <- carFuels[2:length(carFuels)]
carFuels <- factor(carFuels)
carFuels

# 10. 정제
carTitles[11] <- '랜드로버 뉴 레인지로버 스포츠 3.0 SONG'

# 11. 합치기
carUsed <- data.frame(carTitles, carYears, carFuels)

# 12. 데이터셋
ds <- table(carUsed$carFuels)
ds <- data.frame(ds)
ds

# 13. 차트
library(ggplot2)
###
ggplot(data = ds, aes(x=Var1, y=Freq)) + geom_bar(stat = 'identity') +
  ggtitle('보배드림 1페이지 외제차 연료별') +
  thema(plot_title = 
          element_text(size=16,
                       face='bold',
                       color='steelblue',
                       hjust=0.5) ) +
  labs(x = '연료별', y = '차량수')

ggplot(data = ds, aes(Var1, y=Freq, color=rainbow(2))) +
  geom_bar(stat = 'identity')+
  ggtitle('보배드림 1페이지 외제차 연료별') +
  theme(plot.title = element_text(size = 16,
                                  face = 'bold',
                                  color = 'steelblue',
                                  hjust = 0.5)) +
  labs(x = '연료별', y = '차량수')
