##CARGA, VISTA Y ATTACH DE LOS DATOS##
misdatos<-read.csv("corridaT.csv",sep = ";")
misdatos
attach(misdatos)
View(misdatos)

##INSTALACI�N Y CARGA DE LIBRER�AS IMPORTANTES Y NECESARIAS##
if(!require(ape)){install.packages("ape")}
if(!require(ggplot2)){install.packages("ggplot2")}
if(!require(ggridges)){install.packages("ggridges")}
if(!require(plyr)){install.packages("plyr")}
if(!require(Rmisc)){install.packages("Rmisc")}
if(!require(dplyr)){install.packages("dplyr")}
if(!require(biotools)){install.packages("biotools")}
if(!require(moments)){install.packages("moments")}
if(!require(nortest)){install.packages("nortest")}
if(!require(rcompanion)){install.packages("rcompanion")}
if(!require(car)){install.packages("car")}
library(ape)
library(ggplot2)
library(ggridges)
library(plyr)
library(Rmisc)
library(dplyr)
library(biotools)
library(moments)
library(nortest)
library(rcompanion)
library(car)

##ESTAD�STICA DESCRIPTIVA Y MEDIDAS DE RESUMEN##
#Resumen estad�stico para las dos variables
summary(Air)
summary(Surf..Water)
#Resumen estad�stico para las dos variables seg�n la �poca del a�o
summary(Air[Year=="Verano"])
summary(Air[Year=="Oto�o"])
summary(Surf..Water[Year=="Verano"])
summary(Surf..Water[Year=="Oto�o"])
#Resumen estad�stico para las dos variables seg�n el momento del d�a
summary(Air[Day=="Madrugada"])
summary(Air[Day=="Ma�ana"])
summary(Air[Day=="Tarde"])
summary(Air[Day=="Noche"])
summary(Surf..Water[Day=="Madrugada"])
summary(Surf..Water[Day=="Ma�ana"])
summary(Surf..Water[Day=="Tarde"])
summary(Surf..Water[Day=="Noche"])
#Desviaci�n est�ndar de las dos variables
sd(Air)
sd(Surf..Water)
#Desviaci�n est�ndar de las dos variables seg�n la �poca del a�o
sd(Air[Year=="Verano"])
sd(Air[Year=="Oto�o"])
sd(Surf..Water[Year=="Verano"])
sd(Surf..Water[Year=="Oto�o"])
#Desviaci�n est�ndar de las dos variables seg�n el momento del d�a
sd(Air[Day=="Madrugada"])
sd(Air[Day=="Ma�ana"])
sd(Air[Day=="Tarde"])
sd(Air[Day=="Noche"])
sd(Surf..Water[Day=="Madrugada"])
sd(Surf..Water[Day=="Ma�ana"])
sd(Surf..Water[Day=="Tarde"])
sd(Surf..Water[Day=="Noche"])
#Varianza de las dos variables
var(Air)
var(Surf..Water)
#Varianza de las dos variables seg�n la �poca del a�o
var(Air[Year=="Verano"])
var(Air[Year=="Oto�o"])
var(Surf..Water[Year=="Verano"])
var(Surf..Water[Year=="Oto�o"])
#Varianza de las dos variables seg�n el momento del d�a
var(Air[Day=="Madrugada"])
var(Air[Day=="Ma�ana"])
var(Air[Day=="Tarde"])
var(Air[Day=="Noche"])
var(Surf..Water[Day=="Madrugada"])
var(Surf..Water[Day=="Ma�ana"])
var(Surf..Water[Day=="Tarde"])
var(Surf..Water[Day=="Noche"])

##HISTOGRAMAS PARA LAS VARIABLES SEG�N EL MOMENTO DEL D�A Y �POCA DEL A�O##
hist(Air, xlab = "Temperatura del aire (�C)", main = "Histograma de la temperatura del aire", col = "orange",xlim = c(5,30))
hist(Air[Year=="Verano"], xlab = "Temperatura del aire (�C)", main = "Temperatura del aire en verano", col = "orange",xlim = c(5,30))
hist(Air[Year=="Oto�o"], xlab = "Temperatura del aire (�C)", main = "Temperatura del aire en oto�o", col = "orange",xlim = c(10,25))
hist(Air[Day=="Madrugada"], xlab = "Temperatura del aire (�C)", main = "Temperatura del aire en la madrugada", col = "orange",xlim = c(5,20))
hist(Air[Day=="Ma�ana"], xlab = "Temperatura del aire (�C)", main = "Temperatura del aire en la ma�ana", col = "orange",xlim = c(5,25))
hist(Air[Day=="Tarde"], xlab = "Temperatura del aire (�C)", main = "Temperatura del aire en la tarde", col = "orange",xlim = c(5,30))
hist(Air[Day=="Noche"], xlab = "Temperatura del aire (�C)", main = "Temperatura del aire en la noche", col = "orange",xlim = c(5,30))
hist(Surf..Water, xlab = "Temperatura del agua (�C)", main = "Histograma de la temperatura del agua", col = "lightblue",xlim = c(5,35))
hist(Surf..Water[Year=="Verano"], xlab = "Temperatura del agua (�C)", main = "Temperatura de la superficie del agua en verano", col = "lightblue",xlim = c(5,35))
hist(Surf..Water[Year=="Oto�o"], xlab = "Temperatura del agua (�C)", main = "Temperatura de la superficie del agua en oto�o", col = "lightblue",xlim = c(15,28))
hist(Surf..Water[Day=="Madrugada"], xlab = "Temperatura del agua (�C)", main = "Temperatura de la superficie del agua en la madrugada", col = "lightblue",xlim = c(8,22))
hist(Surf..Water[Day=="Ma�ana"], xlab = "Temperatura del agua (�C)", main = "Temperatura de la superficie del agua en la ma�ana", col = "lightblue",xlim = c(5,30))
hist(Surf..Water[Day=="Tarde"], xlab = "Temperatura del agua (�C)", main = "Temperatura de la superficie del agua en la tarde", col = "lightblue",xlim = c(10,35))
hist(Surf..Water[Day=="Noche"], xlab = "Temperatura del agua (�C)", main = "Temperatura de la superficie del agua en la noche", col = "lightblue",xlim = c(5,30))

##BOXPLOTS PARA LAS VARIABLES SEG�N EL MOMENTO DEL D�A Y �POCA DEL A�O##
boxplot(Air~Year, xlab = "�poca del a�o", ylab = "Temperatura del aire (�C)", main = "Temperatura del aire seg�n la �poca del a�o", col = c("lightblue","orange")) #Gr�fico de cajas y bigotes para la temperatura del aire seg�n la �poca del a�o
boxplot(Surf..Water~Year, xlab = "�poca del a�o", ylab = "Temperatura del agua (�C)", main = "Temperatura de la superficie del agua seg�n la �poca del a�o", col = c("lightblue","orange")) #Gr�fico de cajas y bigotes para la temperatura de la superficie agua seg�n la �poca del a�o
boxplot(Air~Day, xlab = "Momento del d�a", ylab = "Temperatura del aire (�C)", main = "Temperatura del aire seg�n el momento del d�a", col = rainbow(4)) #Gr�fico de cajas y bigotes para la temperatura del aire seg�n el momento del d�a
boxplot(Surf..Water~Day, xlab = "Momento del d�a", ylab = "Temperatura del agua (�C)", main = "Temperatura de la superficie del agua seg�n el momento del d�a", col = rainbow(4)) #Gr�fico de cajas y bigotes para la temperatura de la superficie del agua seg�n el momento del d�a
boxplot(Air[Year=="Verano"]~Day[Year=="Verano"], xlab = "Momento del d�a", ylab = "Temperatura del aire (�C)", main = "T. del aire seg�n el momento del d�a en verano", col = rainbow(4)) #Gr�fico de cajas y bigotes para la temperatura del aire seg�n el momento del d�a en verano
boxplot(Air[Year=="Oto�o"]~Day[Year=="Oto�o"], xlab = "Momento del d�a", ylab = "Temperatura del aire (�C)", main = "T. del aire seg�n el momento del d�a en oto�o", col = rainbow(4)) #Gr�fico de cajas y bigotes para la temperatura del aire seg�n el momento del d�a en oto�o
boxplot(Surf..Water[Year=="Verano"]~Day[Year=="Verano"], xlab = "Momento del d�a", ylab = "Temperatura del agua (�C)", main = "T. superficie del agua seg�n el momento del d�a en verano", col = rainbow(4)) #Gr�fico de cajas y bigotes para la temperatura de la superficie del agua seg�n el momento del d�a en verano
boxplot(Surf..Water[Year=="Oto�o"]~Day[Year=="Oto�o"], xlab = "Momento del d�a", ylab = "Temperatura del agua (�C)", main = "T. superficie del agua seg�n el momento del d�a en oto�o", col = rainbow(4)) #Gr�fico de cajas y bigotes para la temperatura de la superficie del agua seg�n el momento del d�a en oto�o

##ALGUNOS GR�FICOS DE DISTRIBUCI�N##
ggplot(misdatos)+
  geom_point(aes(x=Air, y=Surf..Water,color= Year,shape=Year)) #Relaci�n temperaturas superficie del agua-aire seg�n la �poca del a�o
ggplot(misdatos)+
  geom_point(aes(x=Air, y=Surf..Water,color= Day,shape=Day)) #Relaci�n temperaturas superficie del agua-aire seg�n el momento del d�a
ggplot(misdatos) +
  geom_violin(aes(x=Year, y=Air, fill=Year, color=Year),alpha=0.4,width=1.4) +
  geom_boxplot(aes(x=Year, y=Air),outlier.colour = "red", outlier.shape = 16,width=0.1)+
  geom_jitter(aes(x=Year, y=Air),alpha=0.4) #Distribuci�n de los datos de temperatura del aire seg�n la �poca del a�o
ggplot(misdatos) +
  geom_violin(aes(x=Year, y=Surf..Water, fill=Year, color=Year),alpha=0.4,width=1.4) +
  geom_boxplot(aes(x=Year, y=Surf..Water),outlier.colour = "red", outlier.shape = 16,width=0.1)+
  geom_jitter(aes(x=Year, y=Surf..Water),alpha=0.4) #Distribuci�n de los datos de temperatura de la superficie del agua seg�n la �poca del a�o
ggplot(misdatos, aes(sample = Air)) +
  stat_qq() +
  stat_qq_line() #Curva de distribuci�n de los datos de temperatura del aire
ggplot(misdatos, aes(sample = Surf..Water)) +
  stat_qq() +
  stat_qq_line() #Curva de distribuci�n de los datos de temperatura de la superficie del agua

##ASIMETR�A Y CURTOSIS
skewness(Air) #Existe un poco de sesgo
skewness(Surf..Water) #Existe un poco de sesgo
by(Air, Year, skewness) #Existe un poco de sesgo
by(Air, Day, skewness) #Existe un poco de sesgo
by(Surf..Water, Year, skewness) #Existe sesgo en ambas �pocas del a�o
by(Surf..Water, Day, skewness) #Existe sesgo en todos los momentos del d�a y en la madrugada es extremadamente sesgada la distribuci�n
kurtosis(Air) #Leptocurtica
kurtosis(Surf..Water) #Leptocurtica
by(Air, Year, kurtosis) #Leptocurticas
by(Air, Day, kurtosis) #Leptocurticas
by(Surf..Water, Year, kurtosis) #Leptocurticas
by(Surf..Water, Day, kurtosis) #Leptocurticas

##TESTS DE NORMALIDAD - CONTRASTE DE HIP�TESIS##
lillie.test(Air) #No hay normalidad para la temperatura del aire
lillie.test(Surf..Water) #No hay normalidad para la temperatura de la superficie del agua
by(Air, Year, lillie.test) #No hay normalidad para la temperatura del aire en ninguna de las dos �pocas del a�o
by(Surf..Water, Year, lillie.test) #No hay normalidad para la temperatura de la superficie del agua en ninguna de las dos �pocas del a�o
by(Air, Day, lillie.test) #No hay normalidad para la temperatura del aire en ninguno de los momentos del d�a
by(Surf..Water, Day, lillie.test) #No hay normalidad para la temperatura de la superficie del agua en ninguno de los momentos del d�a

##HOMOGENEIDAD DE VARIANZAS - HOMOCEDASTICIDAD##
fligner.test(Air ~ Year, data = misdatos) #Las varianzas para la temperatura del aire son diferentes seg�n la �poca del a�o
fligner.test(Air ~ Day, data = misdatos) #Las varianzas para la temperatura del aire son diferentes seg�n el momento del d�a
fligner.test(Surf..Water ~ Year, data = misdatos) #Las varianzas para la temperatura de la superficie del agua son diferentes seg�n la �poca del a�o
fligner.test(Surf..Water ~ Day, data = misdatos) #Las varianzas para la temperatura de la superficie del agua son diferentes seg�n el momento del d�a

##TESTS DE DIFERENCIA DE MEDIAS - ALTERNATIVAS NO PARAM�TRICAS##
kruskal.test(Air ~ Day) #La temperatura del aire cambia seg�n el momento del d�a
kruskal.test(Surf..Water ~ Day) #La temperatura de la superficie del agua cambia seg�n el momento del d�a
wilcox.test(Air ~ Year) #La temperatura del aire cambia seg�n la �poca del a�o
wilcox.test(Surf..Water ~ Year) #La temperatura de la superficie del agua cambia seg�n la �poca del a�o
pairwise.wilcox.test(Air, Day) #Las diferencias entre las temperaturas del aire se presentan entre todos los momentos del d�a pero la diferencia es menor entre la noche y la ma�ana
pairwise.wilcox.test(Surf..Water, Day) #Las diferencias entre las temperaturas de la superficie del agua se presentan entre todos los momentos del d�a pero la diferencia es menor entre la noche y la ma�ana

##PLOTS DE RELACI�N (Y VARIACI�N) ENTRE LAS VARIABLES Y TESTS DE CORRELACI�N##
scatter.smooth(Air, Surf..Water, xlab = "Temperatura del aire (�C)", ylab = "Temperatura del agua (�C)", main = "T. del aire vs T. del agua - Relaci�n") #Plot para ver la relaci�n y variaci�n de la temperatura del aire y la de la superficie del agua
cor.test(Air, Surf..Water, method = "spearman") #Test de correlaci�n de Spearman
scatter.smooth(Air[Year =="Verano"], Surf..Water[Year == "Verano"], xlab = "Temperatura del aire (�C)", ylab = "Temperatura del agua (�C)", main = "T. del aire vs T. del agua en verano - Relaci�n") #Plot para ver la relaci�n y variaci�n de la temperatura del aire y la de la superficie del agua en verano
cor.test(Air[Year =="Verano"], Surf..Water[Year == "Verano"], method = "spearman") #Test de correlaci�n de Spearman para el verano
scatter.smooth(Air[Year =="Oto�o"], Surf..Water[Year == "Oto�o"], xlab = "Temperatura del aire (�C)", ylab = "Temperatura del agua (�C)", main = "T. del aire vs T. del agua en oto�o - Relaci�n") #Plot para ver la relaci�n y variaci�n de la temperatura del aire y la de la superficie del agua en oto�o
cor.test(Air[Year =="Oto�o"], Surf..Water[Year == "Oto�o"], method = "spearman") #Test de correlaci�n de Spearman para el oto�o

##REGRESI�N LINEAL##
rlverano<-lm(Air[Year =="Verano"] ~ Surf..Water[Year == "Verano"]) #Regresi�n lineal para el verano
summary(rlverano) #Informaci�n de la regresi�n lineal para el verano
rloto�o<-lm(Air[Year =="Oto�o"] ~ Surf..Water[Year == "Oto�o"]) #Regresi�n lineal para el oto�o
summary(rloto�o) #Informaci�n de la regresi�n lineal para el oto�o
general<-lm(Air ~ Surf..Water) #Regresi�n lineal general
summary(general) #Informaci�n de la regresi�n lineal general

##PLOTS DE RELACI�N (Y VARIACI�N) ENTRE LAS VARIABLES SEG�N EL MOMENTO DEL D�A Y TESTS DE CORRELACI�N##
scatter.smooth(Air[Day=="Madrugada"],Surf..Water[Day=="Madrugada"], xlab = "Temperatura del aire (�C)", ylab = "Temperatura del agua (�C)", main = "T. del aire vs T. del agua en la madrugada - Relaci�n")
scatter.smooth(Air[Day=="Ma�ana"],Surf..Water[Day=="Ma�ana"], xlab = "Temperatura del aire (�C)", ylab = "Temperatura del agua (�C)", main = "T. del aire vs T. del agua en la ma�ana - Relaci�n")
scatter.smooth(Air[Day=="Tarde"],Surf..Water[Day=="Tarde"], xlab = "Temperatura del aire (�C)", ylab = "Temperatura del agua (�C)", main = "T. del aire vs T. del agua en la tarde - Relaci�n")
scatter.smooth(Air[Day=="Noche"],Surf..Water[Day=="Noche"], xlab = "Temperatura del aire (�C)", ylab = "Temperatura del agua (�C)", main = "T. del aire vs T. del agua en la noche - Relaci�n")
cor.test(Air[Day=="Madrugada"],Surf..Water[Day=="Madrugada"], method = "spearman")
cor.test(Air[Day=="Ma�ana"],Surf..Water[Day=="Ma�ana"], method = "spearman")
cor.test(Air[Day=="Tarde"],Surf..Water[Day=="Tarde"], method = "spearman")
cor.test(Air[Day=="Noche"],Surf..Water[Day=="Noche"], method = "spearman")

##REGRESI�N LINEAL##
madrugada<-lm(Air[Day =="Madrugada"] ~ Surf..Water[Day == "Madrugada"]) #Regresi�n lineal para la madrugada
summary(madrugada) #Informaci�n de la regresi�n lineal para la madrugada
ma�ana<-lm(Air[Day =="Ma�ana"] ~ Surf..Water[Day == "Ma�ana"]) #Regresi�n lineal para la ma�ana
summary(ma�ana) #Informaci�n de la regresi�n lineal para la ma�ana
tarde<-lm(Air[Day =="Tarde"] ~ Surf..Water[Day == "Tarde"]) #Regresi�n lineal para la tarde
summary(ma�ana) #Informaci�n de la regresi�n lineal para la tarde
noche<-lm(Air[Day =="Noche"] ~ Surf..Water[Day == "Noche"])  #Regresi�n lineal para la noche
summary(ma�ana) #Informaci�n de la regresi�n lineal para la noche