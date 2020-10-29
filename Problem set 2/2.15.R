# -----------------------------------------------------------------------------------------------------------------------------
# Question 2.15
# Part a
# -----------------------------------------------------------------------------------------------------------------------------

data2.8 <- Table_2.8
data2.8


ggplot(data = data2.8, aes(y=foodexp, x=totexp)) + geom_point() + stat_smooth(method = "lm", col = "red", formula = y~x)+
  ylab("Food Expenditure")+
  xlab("Total Expenditure")


# -----------------------------------------------------------------------------------------------------------------------------
# Question 2.15
# Part b
# -----------------------------------------------------------------------------------------------------------------------------


# we can see a positive relationship here. As the total expenditure increases, the food expense also increase

# -----------------------------------------------------------------------------------------------------------------------------
# Question 2.15
# Part c
# -----------------------------------------------------------------------------------------------------------------------------

# Although we see a positive relationship here, we also observe high variability as the Total expenses increase, so we can not assume relationship here to be always linear

