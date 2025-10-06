

# Pacote Estudado |  ggplot2

library(ggplot2)
library(dplyr)
library(tidyverse) # ---------  pode ser a biblioteca principal
#-----  começa monitoria.


#----  saber buscar ajuda! 

help("ggplot")  # -----  ler corretamente 
help("dplyr")
help("tidyverse")
# data frame

sample_df <- data.frame(
  jogadores = factor(rep(letters[1:3], each = 10)), # posso nomear de forma independente.
  gols = rnorm(30))  # o tamanho do data frame 
sample_df # reproduzir o data frame

# você trabalhar de maneira clara

names(sample_df) # descobrir os nomes das variaveis
glimpse(sample_df) # ler a estrutura do meu banco de dados

# r2 plano cartesiano | entre coordenadas polares

ggplot(sample_df, aes(x = jogadores,
                      y = gols))+
  geom_boxplot(color="purple")+
  facet_wrap(~jogadores) #  a leitua da divisão dos jogadores!

#  eu sei colocar cor
# eu entendo que o tracejo central é a minha média.
# três classes | de vertor , vamos supor que sejam jogadores de Futebol.
