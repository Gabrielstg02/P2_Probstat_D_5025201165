#NO 1
install.packages("BSDA")

library(BSDA)

orang.ke = c(seq(1:9))
oksigen.sebelum = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
oksigen.sesudah = c(100, 95, 70, 90, 90, 90, 89, 90, 100)
data = data.frame(orang.ke,oksigen.sebelum, oksigen.sesudah)
n = 9

#a
selisih = data$oksigen.sesudah - data$oksigen.sebelum
cat("Standar deviasi selisih pasangan pengamatan : ")
standardev = sd(selisih)
standardev

#b
mu = 0
xbar = mean(selisih)
tstastistik =( (xbar - mu) / (standardev / sqrt(n)))
pvalue = 2 * pt(-abs(tstastistik), df=n-1)
pvalue


#c

t.test(x=data$oksigen.sesudah, y=data$oksigen.sebelum,
       alternative = "two.sided",
       mu = 0, paired = TRUE, var.equal = TRUE,
       conf.level = 0.95)


# Soal 2
install.packages("BSDA")
library(BSDA)

# Soal 2a
# Jawaban di README

# Soal 2b 
tsum.test(mean.x=23500, sd(3900), n.x=100)

# Soal 2c
# Jawaban di README

# Soal 3
# Soal 3a
# H0 dan H1
# Jawaban di README

# soal 3b 
# Hitung Sampel Statistik
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)

# soal 3c
# Lakukan Uji Statistik (df =2)
install.packages("mosaic")
library(mosaic)

plotDist(dist='t', df=2, col="blue")

# soal 3d
# Nilai Kritikal
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

# soal 3e
# Jawaban di README

# soal 3f
# Jawaban di README

# Soal 4
# Soal 4a
# Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
# 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan
# lihat apakah ada outlier utama dalam homogenitas varians.

myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(myFile)
head(myFile)
attach(myFile)

myFile$V1 <- as.factor(myFile$V1)
myFile$V1 = factor(myFile$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(myFile$V1)

group1 <- subset(myFile, V1=="Kucing Oren")
group2 <- subset(myFile, V1=="Kucing Hitam")
group3 <- subset(myFile, V1=="Kucing Putih")

# Soal 4b
# carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang
# didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
bartlett.test(Length~V1, data=dataoneway)

# Soal 4c
# Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus
# Grup dan beri nama model tersebut model 1.
qqnorm(group1$Length)
qqline(group1$Length)

# Soal 4d
# Jawaban di README

# Soal 4e
model1 <- lm(Length~Group, data=myFile)

anova(model1)

TukeyHSD(aov(model1))

# Soal 4f
library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + 
  scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")


# Soal 5
# Soal 5a
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)

str(GTL)

qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)

# Soal 5b
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

# Soal 5c
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

# Soal 5d
tukey <- TukeyHSD(anova)
print(tukey)

# Soal 5e
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)

write.csv("GTL_summary.csv")