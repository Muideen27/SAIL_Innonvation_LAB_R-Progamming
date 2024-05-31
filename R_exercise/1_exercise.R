# Custom bubble sort function
bubble_sort <- function(x) {
  n <- length(x)
  for (i in 1:(n-1)) {
    for (j in 1:(n-i)) {
      if (x[j] > x[j+1]) {
        # Swap elements
        temp <- x[j]
        x[j] <- x[j+1]
        x[j+1] <- temp
      }
    }
  }
  return(x)
}

set.seed(123)

# Parameter for binomial distribution
n <- 10 # number of trials
size <- 10 # number of experiments
prob <- 0.5 # probability of success in each trials


random_binomial <- rbinom(n = 10, size = 10, prob = 0.5)

print(random_binomial)


sorted_binomial <- bubble_sort(random_binomial)

print(sorted_binomial)
