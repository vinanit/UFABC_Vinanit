#Importações
library(dplyr)

#Definir o diretorio de trabalho
#setwd('~/Documentos/UFABC_Vinanit/Bioestatistica/Aula2')

##Capítulo 1
vet = c('a', 1, '3')
str(vet)
summary(vet)
vet[1]

vet2 = c(1,2,3)
str(vet2)
summary(vet2)
vet2[1]

x = array(c(1:20), dim = c(4,5))
x

y = matrix(data = c(1:20), nrow = 4, ncol = 5, byrow = 1)
y


help(package='datasets')

d1 = read.table(file='dado2_NA_tab.txt', header = TRUE, sep = '\t')
str(d1)

str(iris)
names(iris)
summary(iris)

iris$Sepal.Length
mean(iris$Sepal.Width)
median(iris$Sepal.Width)
sd(iris$Sepal.Width)

##Capítulo 2

png(filename = '01.png')
plot(x = iris$Petal.Width, pch = 16, col = iris$Species, ylab = "Largura Pétala")

plot(x = iris$Petal.Width, y = iris$Petal.Length, pch = 16, col = iris$Species, ylab = "Comprimento da Pétala", xlab = "Largura da Pétala")
dev.off()

#Gera o Grafico de dispersão
png(filename = "dispersao_larguraPetala.png")
plot(x = iris$Petal.Width, pch = 16, col = iris$Species, ylab = "Largura Pétala")
dev.off()

#Gera o Histograma
png(filename = "hist.png")  
hist(iris$Sepal.Width, col = "lightblue", main = "Largura da Petala", 
     xlab = "Largura da petala", ylab = "Frequência", breaks = 40)
dev.off() 

#Gera o BoxPlot
png(filename = "boxplot.png")
plot (x = iris$Species, y = iris$Petal.Length)
dev.off()

#Gera o BarPlot
png(filename = "barplot.png")
barplot(iris$Sepal.Width, col = 'lightblue',
	legend.text='Grafico de barras da Largura das Petalas',
	xlab = ' ', ylab = 'Largura das Petalas')
dev.off()

#Gera Gráfico de Pizza
png(filename = "pizza.png")
setosa = iris$Species == 'setosa'
ves = iris$Species == 'versicolor'
vir = iris$Species == 'virginica'
numS = sum(setosa)
numVes = sum(ves)
numVir = sum(vir)
paraPie = c(numS, numVes, numVir)
names(paraPie) = c('setosa', 'versicolor', 'virginica')
pie(paraPie)
dev.off()

##Capítulo 2

d2 = read.table(file='dado3_NA_tab.txt', header = TRUE, sep = '\t')
#tabela com as contagens
table(d2$altura)

#tabela com as porcentagens
tab = table(d2$altura)
prob_table = tab/sum(tab)
print(prob_table)
png("pizza_porcentagem.png")
pie(prob_table, main = "Gráfico de Pizza das Porcentagens de Altura")
dev.off()

#Tabela com frequencia acumulada
cumsum_table = cumsum(tab)
print('Cumulative Frequency Table')
print(cumsum_table)

t2 = table(d2$sexo, d2$raca)
t2

#Calculando a somatoria da altura por sexo

install.packages('dplyr')

#Carregando dplyr
library(dplyr)

#Agrupando os dados por sexo e calculando a somatoria da altura por sexo.
total_altura = d2 %>%
	group_by(sexo) %>%
	summarize(total_altura = sum(altura))

total_altura

#Agrupar os dados por sexo e calcular a media da altura por sexo.
media_altura = d2 %>%
	group_by(sexo) %>%
	summarize(media_altura = mean(altura))

media_altura

#Agrupar os dados por sexo e calcular a media da altura por sexo e a media do peso por sexo
media_alturaPeso = d2 %>%
	group_by(sexo) %>%
	summarize(media_altura = mean(altura), med_peso=mean(peso))

media_alturaPeso












