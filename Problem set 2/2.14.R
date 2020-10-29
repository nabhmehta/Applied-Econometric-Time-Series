
# -----------------------------------------------------------------------------------------------------------------------------
# Question 2.14
# Part a
# -----------------------------------------------------------------------------------------------------------------------------

data2.7 <- Table_2.7
data2.7

ggplot(data = data2.7, aes(y=CLFPRM, x=UNRM)) + geom_point() + stat_smooth(method = "lm", col = "red", formula = y~x)+
  ylab("Employment Rate MALE")+
  xlab("Unemployment Rate MALE") 
# We are observing a positive relationship between the two.
# We believe if unemployment increases, the labor force try to enter into employment via other available means

# -----------------------------------------------------------------------------------------------------------------------------
# Question 2.14
# Part b
# -----------------------------------------------------------------------------------------------------------------------------

ggplot(data = data2.7, aes(y=CLFPRF, x=UNRF)) + geom_point() + stat_smooth(method = "lm", col = "red", formula = y~x)+
  ylab("Employment Rate FEMALE")+
  xlab("Unemployment Rate FEMALE") 

# We are observing a negative relationship here. It seems like unemployment disheartens women to enter into work force again


# -----------------------------------------------------------------------------------------------------------------------------
# Question 2.14
# Part c
# -----------------------------------------------------------------------------------------------------------------------------

ggplot(data = data2.7, aes(y=CLFPRM, x=AHE82)) + geom_point() + stat_smooth(method = "lm", col = "red", formula = y~x)+
  ylab("Employment Rate MALE")+
  xlab("AHE82") 

ggplot(data = data2.7, aes(y=CLFPRF, x=AHE82)) + geom_point() + stat_smooth(method = "lm", col = "red", formula = y~x)+
  ylab("Employment Rate FEMALE")+
  xlab("AHE82") 

# We see a positive relationship for Male workforce when hourly wages increases whereas a negative relationship for Female workforce


# -----------------------------------------------------------------------------------------------------------------------------
# Question 2.14
# Part d
# -----------------------------------------------------------------------------------------------------------------------------

# We need to perform multiple regression analysis for this question
summary(lm(CLFPRM+CLFPRF~AHE82+UNRF+UNRM,data = data2.7))
plot(lm((CLFPRM+CLFPRF)~AHE82+UNRF+UNRM,data = data2.7))
