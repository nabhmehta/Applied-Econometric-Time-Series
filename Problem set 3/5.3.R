# Question 5.3

data2.6 <- Table_2.6

# part a
model1<-lm(wage~school, data = data2.6)
summary(model1)

# Coefficients:
#             Estimate   Std. Error t value Pr(>|t|)    
# (Intercept) -0.01445    0.87462  -0.017    0.987    
# school       0.72410    0.06958  10.406 4.96e-07 ***
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 0.9387 on 11 degrees of freedom
# Multiple R-squared:  0.9078,	Adjusted R-squared:  0.8994 
# F-statistic: 108.3 on 1 and 11 DF,  p-value: 4.958e-07

# part d
anova(model1)
# Response: wage
#             Df Sum Sq Mean Sq F value    Pr(>F)    
# school       1 95.426  95.426  108.29 4.958e-07 ***
#   Residuals 11  9.693   0.881                      
# ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1


# part e
tidy_aov<-tidy(anova(model1))
tidy_aov
ssreg <- tidy_aov$sumsq[1]
ssres <- tidy_aov$sumsq[2]
rsquared <- ssreg/(ssreg+ssres)
rsquared

# > rsquared
# [1] 0.9077914


# extras
# pval_school<- 2*pt(-abs(10.406),df=11)
# pval_school

# > pval_school<- > pval_school<- 2*pt(-abs(10.406),df=11)
# > pval_school
# [1] 4.960176e-07


