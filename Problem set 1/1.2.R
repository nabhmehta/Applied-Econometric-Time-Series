# Excercise 1.1
data<-Table_1.2
data  

# --------------------------------------------------------------------------------------------------------------------
# Question 1.1
# Part a
# --------------------------------------------------------------------------------------------------------------------

# Inflation Rate = (Current CPI - Previous Year CPI)/Previous Year CPI * 100
# Count number of rows
nrow<-nrow(data)

# create one variable of same type as variable data
data1<-data

# Initiate counter i to zero
i<-0

# start FOR loop

for (i in 1:nrow) {
  
  # Since for first year 1973 we do not have any inflation, we would want to make inflation as zero for the year 1973
  if(i-1 == 0){
    data1$Canada[i]= 0
    data1$France[i]= 0
    data1$Germany[i]= 0
    data1$Italy[i]= 0
    data1$Japan[i]= 0
    data1$UK[i]= 0
    data1$US[i]= 0
  } else{
    data1$Canada[i]= (data$Canada[i] - data$Canada[i-1])/data$Canada[i-1]*100
    data1$France[i]= (data$France[i]-data$France[i-1])/data$France[i-1]*100
    data1$Germany[i]= (data$Germany[i]-data$Germany[i-1])/data$Germany[i-1]*100
    data1$Italy[i]= (data$Italy[i]-data$Italy[i-1])/data$Italy[i-1]*100
    data1$Japan[i]= (data$Japan[i]-data$Japan[i-1])/data$Japan[i-1]*100
    data1$UK[i]= (data$UK[i]-data$UK[i-1])/data$UK[i-1]*100
    data1$US[i]= (data$US[i]-data$US[i-1])/data$US[i-1]*100
  }
}

inflation <- data1

# --------------------------------------------------------------------------------------------------------------------
# Question 1.1
# Part b
# --------------------------------------------------------------------------------------------------------------------

inflation2 <- xts(inflation[,-1], order.by = as.Date(paste0(inflation[,1],"-01-01")))
inflation2
stackinfaltion = data.frame(index(inflation2),stack(as.data.frame(coredata(inflation2))))
stackinfaltion

names(stackinfaltion)[1] <- 'Year'
names(stackinfaltion)[2] <- 'Inflation'
names(stackinfaltion)[3] <- 'Country'

g1 <- ggplot(stackinfaltion, aes(x= Year, y=Inflation, color= Country)) + geom_line()
g1 <- g1 + ylim(-10,30)
g1 <- g1 + ggtitle("Aggregated Inflation")
g1


# -----------------------------------------------------------------------------------------------------------------------------
# Part c
# -----------------------------------------------------------------------------------------------------------------------------

# Answer - Inflation was at its peak for all countries during year 1975, however it gradually declined over the period 
#          and was at its least during Year 1995

# -----------------------------------------------------------------------------------------------------------------------------
# Part D
# -----------------------------------------------------------------------------------------------------------------------------

sd(data1$Canada)
sd(data1$France)
sd(data1$Germany)
sd(data1$Italy)
sd(data1$Japan)
sd(data1$UK)
sd(data1$US)

# We used standard deviation to identify variability in inflation and found that Italy had maximum whereas Germany had the least.

# > sd(data1$Canada)
# [1] 3.701865
# > sd(data1$France)
# [1] 4.562254
# > sd(data1$Germany)
# [1] 1.950732
# > sd(data1$Italy)
# [1] 6.508062
# > sd(data1$Japan)
# [1] 5.08794
# > sd(data1$UK)
# [1] 6.167169
# > sd(data1$US)
# [1] 3.395081



# -----------------------------------------------------------------------------------------------------------------------------
# Question 1.2
# Part a
# -----------------------------------------------------------------------------------------------------------------------------

G1 <- ggplot() +
  geom_point(data=inflation,aes(x=US,y=Canada,color="Canada"))+
  geom_point(data=inflation,aes(x=US,y=France,color="France"))+
  geom_point(data=inflation,aes(x=US,y=Germany,color="Germany"))+
  geom_point(data=inflation,aes(x=US,y=Italy,color="Italy"))+
  geom_point(data=inflation,aes(x=US,y=Japan,color="Japan"))+
  geom_point(data=inflation,aes(x=US,y=UK,color="UK"))+
  xlab("US")+
  ylab("Inflation Rest")

G1  

