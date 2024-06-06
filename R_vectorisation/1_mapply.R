# Mapply

# The mapply() function is similar to lapply(), but it allows us to pass 
# multiple arguments to our function(s)

x <- list(c(1:10))

y <- lapply(x, function(n) n^2)

y

z <- mapply(function(a, b) a * b, x, y)

z

########
# Example 2:

# Define the lengths and widths of the rectangles
lengths <- c(5, 10, 15)
widths <- c(2, 4, 6)

# Define a function to compute the area of a rectangle
calculate_area <- function(length, width) {
  return(length * width)
}

# Use mapply to apply the function to each pair of length and width
areas <- mapply(calculate_area, lengths, widths)

# Print the result
print(areas)


###########
#Example 2
# Define the heights (in cm) and weights (in kg)
heights <- c(170, 165, 180, 155, 190)
weights <- c(70, 55, 90, 45, 100)

# Define a function to calculate BMI
calculate_bmi <- function(height, weight) {
  height_in_meters <- height / 100
  bmi <- weight / (height_in_meters ^ 2)
  return(bmi)
}

# Define a function to classify BMI
classify_bmi <- function(bmi) {
  if (bmi < 18.5) {
    return("Underweight")
  } else if (bmi < 24.9) {
    return("Normal weight")
  } else if (bmi < 29.9) {
    return("Overweight")
  } else {
    return("Obese")
  }
}

# Use mapply to calculate BMI for each individual
bmi_values <- mapply(calculate_bmi, heights, weights)

# Use mapply to classify each BMI
bmi_classes <- mapply(classify_bmi, bmi_values)

# Combine results into a data frame
results <- data.frame(
  Height = heights,
  Weight = weights,
  BMI = round(bmi_values, 2),
  Classification = bmi_classes
)

# Print the result
print(results)
