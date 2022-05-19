## 고급 그래프
# timemap
install.packages('treemap')


library(treemap) # treemap 패키지 불러오기
data(GNI2014) # 데이터 불러오기
str(GNI2014)
head(GNI2014) # 데이터 내용 보기
treemap(GNI2014,
        index=c('continent','iso3'), # 계층 구조 설정(대륙-국가)
vSize='population', # 타일의 크기
vColor='GNI', # 타일의 컬러
type='value', # 타일 컬러링 방법
# 사용불가 bg.labels='yellow', # 레이블의 배경색
title="대륙간인구수(GNI)") # 나무지도 제목

treemap(GNI2014,
        index=c('continent','iso3'), # 계층 구조 설정(대륙-국가)
        vSize='population' # 타일의 크기 
        , title = '대륙간인구수(GNI)'
        , type = 'value', na.rm = T
        , vColor = 'GNI')




st <- data.frame(state.x77) # 매트릭스를 데이터프레임으로 변환
# 주의 이름 열 stname을 추가
st <- data.frame(st, stname=rownames(st))
treemap(st,
        index=c('stname'), # 타일에 주 이름 표기
        vSize='Area', # 타일의 크기
        vColor='Income', # 타일의 컬러
        type='value', # 타일 컬러링 방법
        title='USA states area and income' ) # 나무그림의 제목



## LAB 미국 주요도시 통계 데이터 분석
library(treemap)
library(carData)
head(Ericksen)

ds <- subset(Ericksen, city=='state')

ds$stname <- rownames(ds)
treemap(ds,
        index=c('stname'), # 타일에 주 이름 표기
        vSize='poverty', # 타일의 크기
        vColor='crime', # 타일의 컬러
        type='value' # 타일 컬러링 방법
        ,title='미국 막장도시') # 나무그림의 제목




## 방사형 차트
install.packages('fmsb')
library(fmsb)

# (1) 데이터 준비
score <- c(80,60,95,85,40)
max.score <- rep(100,5) # 100을 5회 반복
min.score <- rep(0,5) # 0을 5회 반복
ds <- rbind(max.score,min.score, score)
ds <- data.frame(ds) # 매트릭스를 데이터프레임으로
colnames(ds) <- c('국어','영어','수학','물리','음악')
ds
# (2) 방사형 차트
radarchart(ds)




# [코드 12-5]에 이어 실행
radarchart(ds, # 데이터프레임
           pcol='dark green', # 다각형 선의 색
           pfcol=rgb(0.2,0.5,0.5,0.5), # 다각형 내부 색
           plwd=3, # 다각형 선의 두께
           cglcol='grey', # 거미줄의 색
           cglty=1, # 거미줄의 타입
           cglwd=0.8, # 거미줄의 두께
           axistype=1, # 축의 레이블 타입
           seg=4, # 축의 눈금 분할
           axislabcol='grey', # 축의 레이블 색
           caxislabels=seq(0,100,25) # 축의 레이블 값
)


## LAB 종교 유무 조사
