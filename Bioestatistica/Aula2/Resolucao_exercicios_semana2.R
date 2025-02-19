#Importar bibliotecas
library(dplyr)

##Exercicio 1
#Importar o df
df = read.table(file = 'dado3_NA_tab.txt', header = TRUE, sep = '\t')
str(df)

#Criar a coluna IMC
df <- df %>%
  mutate(IMC = (peso/(altura/100)**2))

df$IMC

