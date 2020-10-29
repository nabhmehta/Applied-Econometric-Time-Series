data5.5 <- Table_5.5
data5.5

# part a
ggplot(data = data5.5, aes(y=SALARY, x=SPENDING)) + geom_point() + stat_smooth(method = "lm", col = "red", formula = y~x)+
  ylab("SALARY")+
  xlab("SPENDING")

# part b

model1 <- lm(SALARY~SPENDING, data = data5.5)
summary(model1)

# Coefficients:
#                   Estimate Std. Error t value Pr(>|t|)    
# (Intercept)        1.213e+04  1.197e+03   10.13 1.31e-13 ***
#   data5.5$SPENDING 3.308e+00  3.117e-01   10.61 2.71e-14 ***
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 2325 on 49 degrees of freedom
# Multiple R-squared:  0.6968,	Adjusted R-squared:  0.6906 
# F-statistic: 112.6 on 1 and 49 DF,  p-value: 2.707e-14


tidy_aov<-tidy(anova(model1))
tidy_aov
ssreg <- tidy_aov$sumsq[1]
ssres <- tidy_aov$sumsq[2]
# ESS Explained Sum of Squares
# > ssreg
# [1] 608555015

# RSS Residual Sum of Squares
# > ssres
# [1] 264825250

# part d
confint(model1,level = 0.95)
# > confint(model1,level = 0.95)
# 2.5 %       97.5 %
#   (Intercept)      9723.204494 14535.537547
# data5.5$SPENDING    2.681192     3.933978

# part e

predict(model1, data.frame(SPENDING=5000),interval = 'confidence',level = 0.95)
# fit     lwr      upr
# 1 28667.3 27621.1 29713.49

# Individual Predictions
# Using values from summary(model1)
# Predicted Value
# > 1.213e+04+16540
# [1] 28670
# # LCL
# > 1.213e+04+16540 - 3.117e-01
# [1] 28669.69
# # UCL
# > 1.213e+04+16540 + 3.117e-01
# [1] 28670.31

# part f

install.packages('ggpubr')
install.packages('tseries')
library("ggpubr")
library('tseries')

hist(residuals(model1))
boxplot(residuals(model1))
ggdensity(residuals(model1), 
          main = "Density Plot for Residuals",
          xlab = "Residuals")

shapiro.test(residuals(model1))
# Shapiro-Wilk normality test
# 
# data:  residuals(model1)
# W = 0.9676, p-value = 0.1754

jarque.bera.test(residuals(model1))
# Jarque Bera Test
# 
# data:  residuals(model1)
# X-squared = 2.1963, df = 2, p-value = 0.3335



