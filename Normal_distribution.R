set.seed(234)

x = rnorm(n = 100, mean = 10, sd = 1)

plot(x, type = "h", xlab = "Trials", ylab = "Values")

hist(x, main = "Normal Distribution", col = "lightblue")


set.seed(234)
# Using the qnorm function

n <- 10 #set sample size
mu <- 0 #mean
sd <- 5 #standatd deviation

qnorm(runif(n), mean = mu, sd = sd) #Generate 10 random normally distribution
