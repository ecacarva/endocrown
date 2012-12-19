###################
# endocrown.R
###################

# Lembrete
# Ricardo: por favor jogue os dados no cara via dput no script no github - 
# lembrar de descrever os metodos. se quiser escrevemos ate as tabelas no proprio R

dput(database)
database  <- structure(list(CP = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
                                   1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
                                   1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
                                   1, 2, 3, 4, 5, 6, 7, 8, 9, 10), 
                            GR = c(1, 1, 1, 1, 1, 1, 1, 1, 1,  1, 
                                   2, 2, 2, 2, 2, 2, 2, 2, 2, 2,  
                                   3, 3, 3, 3, 3, 3, 3, 3, 3, 3,  
                                   4, 4, 4, 4, 4, 4, 4, 4, 4, 4), 
                            FM = c(462.14,  674.48,	621.5,	482.82,	442.69,	446.33,	470.64,	636.26,	645.99,	532.6,
                                   588.39,	216.3,	868.92,	254.7,	329.48,	489.48,	569.48,	387.44,	805.34,	306.82,
                                   280.35,	548.16,	253.62,	339.64,	125.46,	441.57,	428.71,	412.54,	384.55,	531.23,
                                   324.83,	432.06,	385.27,	302.79,	349.11,	248.29,	258.28,	314.84,	292.23,	322.27)), 
                       .Names = c("CP", "GR", "FM"), row.names = c(NA, -40L), class = "data.frame", reference = "A1.4, p. 270")

database

#tabela 1 do artigo ou paragrafo com descricao da amostra

# tabela 2 com anova comparando os 4 grupos. se nao for estatisticamente significativo para ai

# se for significativo, 
#compara grupos dois a dois com t-test e coloca no artigo

# cria um boxplot comparando os 4 grupos