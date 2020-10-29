
data7.5<-Table_7.5
data7.5

model1<- lm(Y~X2, data = data7.5)
summary(model1)

model2<-lm(Y~X3, data = data7.5)
summary(model2)

model3<-lm(Y~(X2+X3),data = data7.5)
summary(model3)

# alpha1: -3.0 alpha2: 3.5
# lambda1: 4.0 lambda3 -1.3571
# beta1: 2 beta2: 1 beta3: -1
