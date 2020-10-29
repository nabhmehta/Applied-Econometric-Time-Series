data6.8<-Table_6.8
data6.8


model1<-lm(l_voverl~l_wage,data = data6.8)
summary(model1)
# Coefficients:
#              Estimate Std. Error t value Pr(>|t|)  
# (Intercept)  -0.4526     1.3515  -0.335   0.7430  
# l_wage        1.3338     0.4467   2.986   0.0105 *
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 0.1898 on 13 degrees of freedom
# Multiple R-squared:  0.4068,	Adjusted R-squared:  0.3612 
# F-statistic: 8.915 on 1 and 13 DF,  p-value: 0.01052

# Hypothesis
# H0: Elasiticity is 1
# H1: Elasticity is not 1

tstat <- (1.3338-1)/0.4470
tstat
# [1] 0.7467562

# Critical T value
qt(p=0.025,df=13,lower.tail = F)
# [1] 2.160369