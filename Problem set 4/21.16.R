data21.16<-Table_21.1
data21.16
install.packages('astsa')
library(astsa)
lag2.plot(data21.16$obs,data21.16$GDP,25)

lag2.plot(data21.16$obs,data21.16$PDI,25)

lag2.plot(data21.16$obs,data21.16$PCE,25)

lag2.plot(data21.16$obs,data21.16$PROFITS,25)

lag2.plot(data21.16$obs,data21.16$DIV,25)
