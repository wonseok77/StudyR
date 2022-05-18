# 데이터 전처리

z <- c(1,2,3,NA,5,NA,8) # 결측값이 포함된 벡터 z
sum(z) # 정상 계산이 되지 않음
is.na(z) # NA 여부 확인
sum(is.na(z)) # NA의 개수 확인
sum(z, na.rm=TRUE) # NA를 제외하고 합계를 계산

# 결측값 제거/대체
z1 <- c(1,2,3,NA,5,NA,7)
z2 <- c(5,8,1,NA,3,NA,7)
z1[is.na(z1)] <- 0


z1 <- c(1,2,3,NA,5,NA,8) # 결측값이 포함된 벡터 z1
z2 <- c(5,8,1,NA,3,NA,7) # 결측값이 포함된 벡터 z2
z1[is.na(z1)] <- 0 # NA를 0 로 치환
z1
z3 <- as.vector(na.omit(z2)) # NA를 제거하고 새로운 벡터 생성
z3
