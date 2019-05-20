# BLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLA
# BLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLA
# BLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLA
# BLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLA
# BLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLA


class(df$type_1)
df$type_1<-factor(df$type_1)
with(df, pie(table(type_1), labels=levels(type_1), xlab="", ylab="", main="type_1",
   col=rainbow_hcl(18)))

par(cex=0.7)
par(bg="skyblue")
with(df, Barplot(type_1, xlab="Tipo de pokemon", ylab="Frequência"))
Fam <- read.table("C:/Users/Steven/Documents/GitHub/Base_de_dados/Famílias.csv", 
  header=TRUE, sep=";", na.strings="NA", dec=",", strip.white=TRUE)
summary(Fam)
table(Fam$p.a.p)
local({
  .Table <- with(Fam, table(p.a.p))
  cat("\ncounts:\n")
  print(.Table)
  cat("\npercentages:\n")
  print(round(100*.Table/sum(.Table), 2))
})

library(waffle)
parts <- c(35,65)
waffle(parts, rows = 10)





with(Fam, Barplot(instr, xlab="instr", ylab="Frequency",ylim=c(0,60)))
Fam$instr <- with(Fam, factor(instr, levels=c('Sem Instrução','Ensino fundamental',
  'Ensino médio'), ordered=TRUE))
with(Fam, Barplot(instr, xlab="instr", ylab="Frequency"))

barplot(table(Fam$instr), col=c("red","blue","blue"))
Fam <- within(Fam, {
  Tam_cat <- as.factor(tam)
})
summary(Fam)
with(Fam, Barplot(Tam_cat, xlab="Tam_cat", ylab="Frequency"))
Fam$renda_real <- with(Fam, renda*998)

