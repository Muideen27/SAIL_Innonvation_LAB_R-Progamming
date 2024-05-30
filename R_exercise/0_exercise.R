# Write a R program that creates a for loop to print numbers from 1 - 10

for(i in 1:10) {
  print(i)
}

mens <- c(1:10)

for (men in mens) {
  print(paste("I AM MAN", men))
}


# Write a R program that create while loop to calculate
# the factorial of a given number


factorial_while <- function(n) {
  # Initialize result to 1, as the factorial of 0 and 1 is 1
  result <- 1
  
  i <- n
  
  while (i > 1) {
    result <- result * i
    i <- i - 1
  }
  return(result)
}
number <- 5

fact_while <- factorial_while(number)

print(paste("Factorial of", number, "is", fact_while))



# Write a R program function to find the sum of all even
# numbers between two given numbers using a for loop.

sum_of_even_numbes <- function(start_num, end_num) {
  sum <- 0
  for (i in start_num:end_num) {
    if(i %% 2 == 0) {
      sum <- sum + i
    }
  }
  return(sum)
}

start_num <- 1
end_num <- 10

result <- sum_of_even_numbes(start_num, end_num)

print(paste("The sum of even numbers between", start_num, "and", end_num, "is", result))
