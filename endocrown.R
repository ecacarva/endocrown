###################
# endocrown.R
###################

# Lembrete
# Ricardo: por favor jogue os dados no cara via dput no script no github - 
# lembrar de descrever os metodos. se quiser escrevemos ate as tabelas no proprio R

# Data Dictionary
# CP = Corpo de Prova
# GR = Grupo
#      CRD: Cimentados com cimento resinoso Dual; 
#      CRP: Cimentados com cimento resinoso de polimerizacao quimica; 
#      CFZ: Cimentados com fosfato de zinco; 
#      CIV: Cimentados com ionomero de vidro convencional.
# FM = Forca Maxima

#tabela 1 do artigo ou paragrafo com descricao da amostra

# Clean environment
rm(list=ls())
detach()

# Loading Database
endocrown <- structure(list(FM = c(462.14,  674.48,  621.5,  482.82,  442.69,                                 446.33,	470.64,	636.26,	645.99,	532.6, 588.39,	216.3,	868.92,	254.7,	329.48,	489.48,	569.48,	387.44,	805.34,	306.82, 280.35,	548.16,	253.62,	339.64,	125.46,	441.57,	428.71,	412.54,	384.55,	531.23, 324.83, 432.06, 385.27,	302.79,	349.11,	248.29,	258.28,	314.84,	292.23,	322.27), GR = c("CRD", "CRD", "CRD", "CRD", "CRD", "CRD", "CRD", "CRD", "CRD", "CRD", "CRP", "CRP", "CRP", "CRP", "CRP", "CRP", "CRP", "CRP", "CRP", "CRP", "CFZ", "CFZ", "CFZ", "CFZ", "CFZ", "CFZ", "CFZ", "CFZ", "CFZ", "CFZ","CIV", "CIV", "CIV", "CIV", "CIV", "CIV", "CIV", "CIV", "CIV", "CIV")), .Names = c("FM","GR"), row.names = c(NA, -40L), class = "data.frame", reference = "A1.4, p. 270")
endocrown

# tabela 2 com anova comparando os 4 grupos. se nao for estatisticamente significativo para ai
data.aov1 <- aov(FM ~ GR)
data.aov1
summary(data.aov1)

# se for significativo, ttest dois a dois
gr1<-FM[1:10]
gr2<-FM[11:20]
gr3<-FM[21:30]
gr4<-FM[31:40]

t.test(gr1,gr2,paired = FALSE, conf.level = 0.95 )
t.test(gr1,gr3,paired = FALSE, conf.level = 0.95 )
t.test(gr1,gr4,paired = FALSE, conf.level = 0.95 )

t.test(gr2,gr3,paired = FALSE, conf.level = 0.95 )
t.test(gr2,gr4,paired = FALSE, conf.level = 0.95 )

t.test(gr3,gr4,paired = FALSE, conf.level = 0.95 )

# cria um boxplot comparando os 4 grupos
boxplot(FM ~ GR,main = "Distributions of mean resistence", 
        xlab = "Groups",ylab = "Resistence (Newtons)")
