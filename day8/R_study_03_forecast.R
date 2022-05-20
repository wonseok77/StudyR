getwd()

install.packages("data.table")
library(data.table)
install.packages('dplyr')
library(dplyr)
install.packages("ggplot2")
library('ggplot2')
install.packages("lubridate")
library(lubridate)
install.packages('stringr')
library(stringr)
install.packages('forecast')
library(forecast)
install.packages('randtests')
library(randtests)


load(file='./result_sales_dt.RData')

str(result_sales_dt)
unique(result_sales_dt$yyyyqrt)

glimpse(result_sales_dt,width = 60)

# 쿼터별 매매량 계산
qrt_cats <- result_sales_dt[yyyyqrt != '201502',.N,yyyyqrt]

ggplot(qrt_cats, aes(x=yyyyqrt, y = N , group = 1)) +
  geom_line() + xlab("년도분기") + ylab("매매건수") + theme(axis.test, x=element_test(angle=90))
  theme(axis.text.x=element_text(angle=90)) + 
    stat_smooth(method='In')
  
  
  

mpg.diff2 <- mpg %>%
  select(f1,city) %>%
  filiter(f1 %in% c('r','p'))

table()

t.test(data = mpg_diff2,cty ~f, vac.equal = T)



  