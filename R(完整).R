#R初體驗
x <- 5 
x
#R的圖形
y <- c(1,2,3,4,5)
plot(y)

z <- c(5,7,1,3,11)
plot(y,z)

#R的圖形示範
demo(graphics)

#iris
data(iris)
plot(iros)

#Taiwan map
install.packages("ggmap")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
library(ggmap)
map.taiwan <- get_map(location="Taiwan", zoom=8)
ggmap(map.taiwan)

#套件安裝
install.packages("C50")
#套件載入
library(C50)
#套件移除
remove.packages("C50")

#套件更新
update.packages()

#R練習
x <- 10
x

y <- x^2
y

z <- sqrt(y)
z

#型態(mode)與長度(length)
x1 <- 10
mode(x1)
length(x1)
x2 <- 10.11
mode(x2)
length(x2)
x3 <- 1
x3
mode(x3)
length(x3)
x4 <- "hello"
mode(x4)
length(x4)

x5 <- 4.21
mode(x5)
length(x5)
x6 <- c(1,2,3,4,5)
mode(x6)
length(x6)


#Vector向量
v <- c(10,5,3.1,6.4,9.2,21.7)
v

length(y)
mode(y)

# NA (缺值),索引,:
v <- c(10,5,NA,6.4,9.2,21.7)
v
v[2]
v2 <- 1:10
v2
v2[1]

#Matrix(矩陣)
x <- matrix( 1:24 , nrow=4, ncol=6 ,byrow=TRUE)
x

y <- matrix( 1:24 , nrow=4, ncol=6 ,byrow=FALSE)
y

#cbind()&rbind()

x1 <- c(1,2,3)
x2 <- c(4,5,6)
x3 <- c(7,8,9)
xc <- cbind(x1,x2,x3)
xc
xr <- rbind(x1,x2,x3)
xr

#轉置(Transposition)
xc_t <- t(xc)
xc_t
#求x有幾列?
nrow(x)
#求x有幾行?
ncol(x)
x[1,]
x[,2]
x[2,3]

#eigen
eigen(xc)
xc
xr
z <- xc %% xr
z

#Array(陣列)
x<- 1:24
dim(x) <- c(4,6)
x
dim(x) <- c(3,4,2)
x
x[2,3,1]
x[3,1,2]

x <- array(0, dim=c(4,6))
x

#Factor(因子)
x <- factor(c("男","女","男","男","女"))
x
#dataframe資料框架
id <- c(1, 2, 3, 4)
age <- c(25, 30, 35, 40)
sex <- c("Male", "Male", "Female", "Female")
pay <- c(30000, 40000, 45000, 50000)

x_dataframe <- data.frame(id, age, sex, pay)
x_dataframe

x_dataframe[3,2]
x_dataframe[4,]
x_dataframe[2]
x_dataframe$age <- edit(x_dataframe)
x_dataframe

#list列表
id <- c(1,2,3)
sex <- c("male","male","female")
pay <- c(30000,40000,45000)
y_dataframe <- data.frame(id,sex,pay)
gender <- factor(c("男","男","女"))
Paul.Family <- list(name="Paul", wife="Iris",
no.kids=3, kids.age=c(25,28,30),gender,
y_dataframe)
Paul.Family

Paul.Family$kids.age
Paul.Family[4]
Paul.Family[[4]]

Paul.Family$kids.age[2]
Paul.Family[[4]][2]
#錯誤 Paul.Family[4][2]

#CH2 資料的讀取與寫入
getwd()
setwd("c:/")
getwd()

x <- read.table("x.csv", sep=",",header=TRUE)
x
x$age
x[1, 2]


#第四章 繪圖功能
demo(graphics)
demo(image)

#高階繪圖
y <- sin(1:20)
plot(y, type="l",main="Sin Plot", xlab = "X",ylab = "Y")

#低階繪圖
title(sub = "圖4-2")
points(5,0.5)

#互動式繪圖
plot(2, 2)
pts <- locator(n = 3) #執行這行點三點
pts #顯示結果

#identify圖
x <- c(1,3,5)
y <- c(5,3,5)
plot(x,y)
identify(x,y,"My Labels")

#證照1
setwd("c:/cert/")
x <- read.csv("A-1.csv", header = FALSE)
X
str(x)
x <- as.matrix(x)
mean(x)
summary(x) #答案:171.2

#證照2
setwd("c:/cert/")
x <- read.csv("A-3.csv", header = FALSE)
x
str(x)
x <- as.matrix(x)
max(x) #答案:126.9

#證照3
setwd("c:/cert/")
x <- read.csv("A-4.csv", header = FALSE)
x
str(x)
x <- as.matrix(x)
quantile(x,0.25) #第一四分位 #答案:13.5
summary(x)

#證照4
setwd("c:/cert/")
x <- read.csv("A-5.csv", header = TRUE) #有標題
x
str(x)
x <- as.matrix(x)
max(x)-min(x) #答案:110

#證照5
setwd("c:/cert/")
x <- read.csv("A-6.csv", header = FALSE)
x
str(x)
x <- as.matrix(x)
var(x) #求變異數 #答案:10

#證照6
setwd("c:/cert/")
x <- read.csv("C-1.csv", header = TRUE)
x
hour <- x[2] #取第2個值
grade <- x[3]
cor(hour, grade) 
cor(grade, hour)   

#證照7
#題目:哪個彈性最大? 答案:List

#證照8
#R的迴圈指令for while repeat

#證照9
x <- 2
if (x<3) y=NA else y=5
print(y) #答案:NA

#證照10
exec <- function(x){
  if (x==0) x_sum=1
  else
    x_sum = x*exec(x-1)
  return(x_sum)
}
exec(4)  #答案:24

#證照11 na.rm = TRUE (有na值 該怎麼忽略)

#證照12
a <- matrix(1:12, nrow=3, byrow = TRUE)
a
apply(a,1,sum) #每一列(橫)作加總
apply(a,2,sum) #每一欄(直)作加總

#證照13
x <- c(1,1,1,3,2,2,3)
table(x)  #每個數字出現的次數(table),1出現3次,2出現2次,3出現2次

#證照14 互動式繪圖 identity hist plot pairs
#證照15 2x3的矩陣matrix
x <- c(1,2,5)
y <- c(3,5,10)
(rbind(x,y))

#證照16 請問summary提供什麼資訊
x <- c(1,2,3)
summary(x)

#證照17 註解的符號:#
#證照18 變數宣告的第一個字母須為英文字母或句點 (不可以是數字)

#證照19
ifelse(2>=3,2,3) #答案:3

#證照20
x1 <- 9%%5
x2 <- 9%%2
x1 #答案:4
x2 #答案:1
