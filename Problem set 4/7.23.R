data2.6<-Table_2.6
data2.6


model1<-lm(log(wage)~log(school)+I((log(school))^2),data=data2.6)
summary(model1)
# Coefficients:
#                      Estimate Std. Error t value Pr(>|t|)
# (Intercept)          2.0344     1.5323   1.328    0.214
# log(school)         -0.9681     1.3150  -0.736    0.479
# I((log(school))^2)   0.4027     0.2776   1.450    0.178

# Residual standard error: 0.1039 on 10 degrees of freedom
# Multiple R-squared:  0.9238,	Adjusted R-squared:  0.9086 
# F-statistic: 60.61 on 2 and 10 DF,  p-value: 2.57e-06


model2<-lm(log(wage)~log(school)+I(log((school)^2)),data=data2.6)
summary(model2)
# Coefficients: (1 not defined because of singularities)
#                             Estimate  Std. Error t value Pr(>|t|)    
# (Intercept)                -0.16671   0.22055   -0.756    0.466    
# log(school)                0.93494    0.08985   10.405    4.96e-07 ***
#   I(log((school)^2))       NA         NA        NA        NA    
# ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 0.1089 on 11 degrees of freedom
# Multiple R-squared:  0.9078,	Adjusted R-squared:  0.8994 
# F-statistic: 108.3 on 1 and 11 DF,  p-value: 4.964e-07




