###################
# endocrown.R
###################

# Lembrete
# Ricardo: por favor jogue os dados no cara via dput no script no github - 
# lembrar de descrever os metodos. se quiser escrevemos ate as tabelas no proprio R

# Data Dictionary
# CP = Corpo de Prova
# GR = Grupo
#      Grupo I: Cimentados com cimento resinoso Dual; 
#      Grupo II: Cimentados com cimento resinoso de polimeriza��o qu�mica; 
#      Grupo III: Cimentados com fosfato de zinco; 
#      Grupo IV: Cimentados com ion�mero de vidro convencional.
# FM = For�a M�xima

#tabela 1 do artigo ou paragrafo com descricao da amostra


# Loading Database
database <- structure(list(FM = c(462.14,  674.48,  621.5,  482.82,  442.69,                                 446.33,	470.64,	636.26,	645.99,	532.6,
                                  588.39,	216.3,	868.92,	254.7,	329.48,	489.48,	569.48,	387.44,	805.34,	306.82,
                                  280.35,	548.16,	253.62,	339.64,	125.46,	441.57,	428.71,	412.54,	384.55,	531.23, 
                                  324.83, 432.06, 385.27,	302.79,	349.11,	248.29,	258.28,	314.84,	292.23,	322.27),
                           GR = c("CRD", "CRD", "CRD", "CRD", "CRD", "CRD", "CRD", "CRD", "CRD", "CRD",
                                  "CRP", "CRP", "CRP", "CRP", "CRP", "CRP", "CRP", "CRP", "CRP", "CRP",  
                                  "FZI", "FZI", "FZI", "FZI", "FZI", "FZI", "FZI", "FZI", "FZI", "FZI", 
                                  "IVC", "IVC", "IVC", "IVC", "IVC", "IVC", "IVC", "IVC", "IVC", "IVC")),
                      .Names = c("FM","GR"), row.names = c(NA, -40L), class = "data.frame", reference = "A1.4, p. 270")
database
attach(database)


# tabela 2 com anova comparando os 4 grupos. se nao for estatisticamente significativo para ai
boxplot(FM ~ GR)

data.aov1=aov(FM ~ GR)
data.aov1
summary(data.aov1)



# se for significativo, 
#compara grupos dois a dois com t-test e coloca no artigo

# cria um boxplot comparando os 4 grupos
