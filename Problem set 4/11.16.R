
data2.8<-Table_2.8
data2.8


model1<- lm(foodexp~totexp,data = data2.8)
summary(model1)

# Residuals:
#   Min       1Q   Median       3Q      Max 
# -153.766  -46.613    7.748   37.696  171.586 

plot(model1)
plot(model1, which=3, col=c("blue")) 

library(ggplot2)
ggplot(lm(foodexp~totexp,data = data2.8)) + 
  geom_point(aes(x=data2.8$totexp, y=.resid))



data2.8$resi <- model1$residuals
data2.8$resi

data2.8$absresi <- abs(model1$residuals)
data2.8

# Park test
model2<-lm(log(resi^2)~log(totexp),data = data2.8)
summary(model2)

# Coefficients:
#               Estimate Std. Error t value Pr(>|t|)  
# (Intercept)  -16.863     10.001  -1.686   0.0977 .
# log(totexp)    3.703      1.552   2.386   0.0206 *
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 2.271 on 53 degrees of freedom
# Multiple R-squared:  0.09702,	Adjusted R-squared:  0.07998 
# F-statistic: 5.694 on 1 and 53 DF,  p-value: 0.02062

# Glejser Test
model3<-lm(absresi~totexp,data = data2.8)
summary(model3)
# Coefficients:
#               Estimate Std. Error t value Pr(>|t|)   
# (Intercept) -32.21965   29.48998  -1.093  0.27953   
# totexp        0.13071    0.04542   2.878  0.00576 **
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 38.77 on 53 degrees of freedom
# Multiple R-squared:  0.1352,	Adjusted R-squared:  0.1188 
# F-statistic: 8.283 on 1 and 53 DF,  p-value: 0.005758

# White Test
model4<-lm(resi^2~totexp+I(totexp^2),data = data2.8)
summary(model4)

#               Estimate Std. Error t value Pr(>|t|)
# (Intercept)  1.304e+04  2.116e+04   0.617    0.540
# totexp      -5.312e+01  7.148e+01  -0.743    0.461
# I(totexp^2)  5.979e-02  5.886e-02   1.016    0.314
# 
# Residual standard error: 6162 on 52 degrees of freedom
# Multiple R-squared:  0.1341,	Adjusted R-squared:  0.1008 
# F-statistic: 4.026 on 2 and 52 DF,  p-value: 0.02368


tidyw(model4)
# A tibble: 3 x 5
# term           estimate  std.error statistic p.value
# <chr>             <dbl>      <dbl>     <dbl>   <dbl>
#   1 (Intercept)  13044.     19447.         0.671   0.502
# 2 totexp         -53.1       71.5       -0.743   0.458
# 3 I(totexp^2)      0.0598     0.0628     0.952   0.341


tidyw(model1)
# A tibble: 2 x 5
# term              estimate std.error statistic      p.value
# <chr>              <dbl>     <dbl>     <dbl>        <dbl>
#   1 (Intercept)   94.2     45.3       2.08          0.0376      
# 2 totexp         0.437    0.0774      5.65          0.0000000164


