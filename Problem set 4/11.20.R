
data11.8<- Table_11.8
data11.8

ggplot(data11.8, aes(x=X, y=Y)) + geom_point()
# Change the point size, and shape
ggplot(data11.8, aes(x=X, y=Y)) +
  geom_point(size=2, shape=23,color = 'Red')

model1<- lm(Y~X,data = data11.8)
summary(model1)
# Coefficients:
#                 Estimate    Std. Error t value Pr(>|t|)    
# (Intercept)     73586.8     3944.6     18.655 9.13e-11 ***
#   X              949.6      217.9      4.357  0.000777 ***
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 8250 on 13 degrees of freedom
# Multiple R-squared:  0.5935,	Adjusted R-squared:  0.5623 
# F-statistic: 18.98 on 1 and 13 DF,  p-value: 0.000777

model2<-lm(Y~X+I(X^2),data = data11.8)
summary(model2)
# Coefficients:
#                 Estimate Std. Error t value  Pr(>|t|)    
# (Intercept)     66356.18    5100.50  13.010  1.96e-08 ***
#   X              2285.92    702.55   3.254   0.00691 ** 
#   I(X^2)        -40.07      20.22    -1.982  0.07091 .  
# ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 7454 on 12 degrees of freedom
# Multiple R-squared:  0.6937,	Adjusted R-squared:  0.6427 
# F-statistic: 13.59 on 2 and 12 DF,  p-value: 0.000825

data11.8$resi<-model1$residuals

model3<-lm(resi^2~X+I(X^2),data = data11.8)
summary(model3)

# Coefficients:
#                 Estimate Std. Error   t value Pr(>|t|)    
# (Intercept)    89876151   41116039    2.186   0.049368 *  
#   X           -17854610   5663354    -3.153   0.008334 ** 
#   I(X^2)       735985     163011      4.515   0.000708 ***
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 60080000 on 12 degrees of freedom
# Multiple R-squared:  0.7607,	Adjusted R-squared:  0.7208 
# F-statistic: 19.08 on 2 and 12 DF,  p-value: 0.0001877


nrow(data11.8)
# n.R^2:-
# > 0.7607*15
# [1] 11.4105


data11.8$resi2<-model2$residuals

model4<-lm(resi2^2~X+I(X^2),data = data11.8)
summary(model4)

# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)  
# (Intercept) 31058469   43553273 0.713    0.4894  
# X           -5930923   5999061  -0.989   0.3424  
# I(X^2)      316663     172673   1.834    0.0916 .
# ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 63650000 on 12 degrees of freedom
# Multiple R-squared:  0.477,	Adjusted R-squared:  0.3899 
# F-statistic: 5.473 on 2 and 12 DF,  p-value: 0.02046

# n.R^2
# > 0.477*15
# [1] 7.155



model5<-lm(I(Y/X)~I(1/X),data = data11.8)
summary(model5)
# Coefficients:
#              Estimate   Std. Error t value Pr(>|t|)    
# (Intercept)   1403.8    154.6      9.078    5.46e-07 ***
#   I(1/X)      68292.1   289.4     235.944   < 2e-16 ***
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 540.7 on 13 degrees of freedom
# Multiple R-squared:  0.9998,	Adjusted R-squared:  0.9997 
# F-statistic: 5.567e+04 on 1 and 13 DF,  p-value: < 2.2e-16

