#Emparejados

PSAT = c(7, 6, 5, 6, 7)
PSDT = c(8, 7, 8, 8, 9)

boxplot(PSAT, PSDT, names = c("PSAT", "PSDT"))


medias = c(mean(PSAT),mean(PSDT))
points(medias,pch=18,col="red")



par(mar = c(2, 2, 2, 2))
par(mfrow = c(1, 2))
qqnorm(PSAT, xlab = "", ylab = "", main = "PSAT")
qqline(PSAT)
qqnorm(PSDT, xlab = "", ylab = "", main = "PSDT")
qqline(PSDT)

######### Prueba t

t.test(PSAT,PSDT, paired = TRUE)

