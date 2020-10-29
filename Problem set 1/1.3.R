
# -----------------------------------------------------------------------------------------------------------------------------
# Question 1.3
# Part a
# -----------------------------------------------------------------------------------------------------------------------------
data3 <- Table_1.3
data3



as.Date(data3[,1])

exchangerate <- xts(data3[,-1],order.by = as.Date(paste0(data3[,1],"-01-01")))
exchangerate

stackex = data.frame(index(exchangerate),stack(as.data.frame(coredata(exchangerate))))
stackex

names(stackex)[1] <- 'Year'
names(stackex)[2] <- 'Exchange'
names(stackex)[3] <- 'Country'

g1 <- ggplot(stackex, aes(x= Year, y=Exchange, color= Country)) + geom_line()
g1 <- g1 + ylim(-10,300)
g1

# From Year 1977 to 1995, we can see drastic dip or variability in Japanese currency Yen. 


# -----------------------------------------------------------------------------------------------------------------------------
# Question 1.3
# Part b
# -----------------------------------------------------------------------------------------------------------------------------


# We can see that over the years Dollar is able to fetch lesser number of Yen units and the variability is high.
# Same trend is followed by other currencies too.

