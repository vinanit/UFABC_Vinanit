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

##Exercicio 2

#Agrupar os dados por sexo, mostrando a média da altura, média do peso e média do IMC por sexo.
filtro1 = df %>%
  group_by(sexo) %>%
  summarize(media_altura = mean(altura), media_peso = mean(peso), media_IMC = mean(IMC))

filtro1
  

