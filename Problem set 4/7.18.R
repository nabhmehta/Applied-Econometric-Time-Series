data7.8<-Table_7.8
data7.8

model1<-lm(Y~X2+X3+X4+X5,data = data7.8)
summary(model1)

# Coefficients:
#                 Estimate Std. Error t value Pr(>|t|)    
# (Intercept)   19.443447   3.406056   5.708 4.14e-05 ***
#   X2           0.018056   0.006411   2.817 0.013017 *  
#   X3          -0.284220   0.457281  -0.622 0.543573    
#   X4           1.343195   0.259258   5.181 0.000112 ***
#   X5           6.331794   3.029538   2.090 0.054060 .  
# ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

# Residual standard error: 4.88 on 15 degrees of freedom
# Multiple R-squared:  0.9776,	Adjusted R-squared:  0.9716 
# F-statistic: 163.7 on 4 and 15 DF,  p-value: 3.519e-12


# R-squared:  0.9776
# Adjusted R-squared:  0.9716

modifiedR2<- (1-(5/nrow(data7.8)))*0.9776
# > modifiedR2
# [1] 0.7332