## 외부 파일 함수 실행
getwd()
setwd('./day4')
getwd()

# 함수파일 호출
source('R_study_03_myFunc내장함수.R')
result




sub1 <- c(14, 16, 12, 20, 8, 6, 12, 18, 16, 10)
sub2 <- c(18, 14, 14, 16, 10, 12, 10, 20, 14, 14)
sub3 <- c(44, 38, 30, 48, 42, 50, 36, 52, 54, 32)
score <- data.frame(sub1, sub2, sub3)


total <- apply(score, 1, sum)
scoreset <- cbind(score, total)
result <- c( )

total
scoreset

for(i in 1:nrow(scoreset)){
  if(scoreset[i,1] < 20*0.4 | scoreset[i,2] < 20*0.4 | 
     scoreset[i,3] < 60*0.4){
    result[i] <- '불합격'
  }else if(scoreset[i,4] >= 60){
    result[i] <- '합격'
  }else{
    result[i] <- '불합격'
  }
  cat(i, '번째 응시생은', result[i],'입니다.\n')
}
  


score <- c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
idx <- which(score<=60) # 성적이 60 이하인 값들의 인덱스
score[idx] <- 61 # 성적이 60 이하인 값들은 61점으로 성적 상향조정
score # 상향조정된 성적 확인
idx <- which(score>=80) # 성적이 80 이상인 값들의 인덱스
score.high <- score[idx] # 성적이 80 이상인 값들만 추출하여 저장
score.high # score.high의 내용 확인




install.packages('Stat2Data')
library(Stat2Data)
data(ChildSpeaks)
str(ChildSpeaks)

idx <- which(ChildSpeaks$Age < 9)
ChildSpeaks[idx, 'm1'] <- 5
idx <- which(ChildSpeaks$Age >= 9 & ChildSpeaks$Age < 15 )
ChildSpeaks[idx, 'm1'] <- 4
idx <- which(ChildSpeaks$Age >= 15 & ChildSpeaks$Age < 21 )
ChildSpeaks[idx, 'm1'] <- 3
idx <- which(ChildSpeaks$Age >= 21 & ChildSpeaks$Age < 27 )
ChildSpeaks[idx, 'm1'] <- 2
idx <- which(ChildSpeaks$Age >= 27 )
ChildSpeaks[idx, 'm1'] <- 1


## 언어 이해력 점수(Getsell) 등급환산
idx <- which(ChildSpeaks$Gesell < 70)
ChildSpeaks$m2[idx] <- 1
idx <- which(ChildSpeaks$Gesell >= 70 & ChildSpeaks$Gesell < 90 )
ChildSpeaks$m2[idx] <- 2
idx <- which(ChildSpeaks$Gesell >= 90 & ChildSpeaks$Gesell < 110 )
ChildSpeaks$m2[idx] <- 3
idx <- which(ChildSpeaks$Gesell >= 110 & ChildSpeaks$Gesell < 130 )
ChildSpeaks$m2[idx] <- 4
idx <- which(ChildSpeaks$Gesell >= 130 )
ChildSpeaks$m2[idx] <- 5


ChildSpeaks$total <- ChildSpeaks$m1 + ChildSpeaks$m2

idx <- which(ChildSpeaks$total < 3)
ChildSpeaks$result[idx] <- '매우느림'
idx <- which(ChildSpeaks$total >= 3 & ChildSpeaks$total < 5 )
ChildSpeaks$result[idx] <- '느림'
idx <- which(ChildSpeaks$total >= 5 & ChildSpeaks$total < 7 )
ChildSpeaks$result[idx] <- '보통'
idx <- which(ChildSpeaks$total >= 7 & ChildSpeaks$total < 9 )
ChildSpeaks$result[idx] <- '빠름'
idx <- which(ChildSpeaks$total >= 9 )
ChildSpeaks$result[idx] <- '매우빠름'


ChildSpeaks
ChildSpeaks[which.min(ChildSpeaks$total),]






