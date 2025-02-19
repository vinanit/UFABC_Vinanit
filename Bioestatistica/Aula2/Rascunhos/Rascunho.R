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

dado = png(filename='dado2_NA_tab.txt')
plot(dado)
dev.off()

str(iris)
names(iris)
summary(iris)

iris$Sepal.Length
mean(iris$Sepal.Width)
median(iris$Sepal.Width)
sd(iris$Sepal.Width)

plot(x = iris$Petal.Width, pch = 16, col = iris$Species, ylab = "Largura Pétala")

plot(x = iris$Petal.Width, y = iris$Petal.Length, pch = 16, col = iris$Species, ylab = "Comprimento da Pétala", xlab = "Largura da Pétala")

png(filename = "dispersao_larguraPetala.png")
plot(x = iris$Petal.Width, pch = 16, col = iris$Species, ylab = "Largura Pétala")
dev.off()






