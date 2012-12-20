###################
# endocrown.R
##########################################################################
# Data Dictionary
# MF = Maxim Force
# Group I..: Cemented with Dual resin cement;
# Group II.: Cemented with chemical polymerization resin cement;
# Group III: cemented with zinc phosphate;
# Group IV.: cemented with conventional glass ionomer.
########################################################################## 

# Clean environment
rm(list=ls())
detach()

# Loading Database
endocrown <- structure(list(MF = c(462.14,  674.48,  621.5,  482.82,  442.69,                                 446.33,  470.64,	636.26,	645.99,	532.6,
                                  588.39,	216.3,	868.92,	254.7,	329.48,	489.48,	569.48,	387.44,	805.34,	306.82,
                                  280.35,	548.16,	253.62,	339.64,	125.46,	441.57,	428.71,	412.54,	384.55,	531.23, 
                                  324.83, 432.06, 385.27,	302.79,	349.11,	248.29,	258.28,	314.84,	292.23,	322.27),
                           GR = c("Group I", "Group I", "Group I", "Group I", "Group I", "Group I", "Group I", "Group I", "Group I", "Group I",
                                  "Group II", "Group II", "Group II", "Group II", "Group II", "Group II", "Group II", "Group II", "Group II", "Group II",  
                                  "Group III", "Group III", "Group III", "Group III", "Group III", "Group III", "Group III", "Group III", "Group III", "Group III", 
                                  "Group IV", "Group IV", "Group IV", "Group IV", "Group IV", "Group IV", "Group IV", "Group IV", "Group IV", "Group IV")),
                      .Names = c("MF","GR"), row.names = c(NA, -40L), class = "data.frame", reference = "A1.4, p. 270")
# show data
endocrown

# analysis of association between the outcome [MF] and the exposure [GR] variables
endocrown$GR <- as.factor(endocrown$GR)
data.aov1 <- aov(MF ~ GR, data=endocrown)
data.aov1
summary(data.aov1)

# unpaired t-test to evaluate the association between any two groups
gr1<-endocrown$MF[1:10]
gr2<-endocrown$MF[11:20]
gr3<-endocrown$MF[21:30]
gr4<-endocrown$MF[31:40]

t.test(gr1,gr2,paired = FALSE, conf.level = 0.95)
t.test(gr1,gr3,paired = FALSE, conf.level = 0.95 )
t.test(gr1,gr4,paired = FALSE, conf.level = 0.95 )
t.test(gr2,gr3,paired = FALSE, conf.level = 0.95 )
t.test(gr2,gr4,paired = FALSE, conf.level = 0.95 )
t.test(gr3,gr4,paired = FALSE, conf.level = 0.95 )

# Graphic showing distributions of mean resistance
boxplot(MF ~ GR,main = "Distributions of mean resistence", 
        xlab = "Groups",ylab = "Resistence (Newtons)", data=endocrown)
