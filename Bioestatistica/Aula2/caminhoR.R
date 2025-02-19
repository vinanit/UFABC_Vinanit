setwd("C:\\Users\\Anak\\Documents\\mine\\ufabc\\2024_1q\\bioestatistica\\ak\\semana01")

d1<-read.table(file="dado2_NA_tab.txt", header = TRUE, sep = "\t")
d2<-read.table(file="dado3_NA_tab.txt", header = TRUE, sep = "\t")
#tabela com as contagens
table(d2$altura)

#tabela com as porcentagens
tab<-table(d2$altura)
prob_table <- tab / sum(tab)      
print(prob_table)
pie(prob_table)

#tabela com frequencia acumulada
cumsum_table <- cumsum(tab)   
print("cumulative Frequency Table")
print(cumsum_table)




table(d2$sexo, d2$raca)


#calculando a altura média por sexo

install.packages("dplyr")

# Load the dplyr library
library(dplyr)
 
# Group the data by employee and calculate the total sales for each employee
total_altura <- d2 %>%
  group_by(sexo) %>%
  summarize(total_altura = sum(altura))
 
# Print the result
total_altura

media_altura <- d2 %>%
  group_by(sexo) %>%
  summarize(media_altura = mean(altura))
 
# Print the result
media_altura

media_alturaPeso <- d2 %>%
  group_by(sexo) %>%
  summarize(media_altura = mean(altura), med_peso=mean(peso))
 
# Print the result
media_alturaPeso



total_sales <- data %>%
  group_by(employee) %>%
  summarize(total_sales = sum(sales))
 
# Print the result
total_sales
