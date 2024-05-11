# We can visualize the uncertainty of data by predicted residual errors 
# Step 1 : Residual Error 
my_data <- mtcars 
my_model <- lm(qsec ~ mpg, data = my_data)


# Make Predictions 
predictions <- predict(my_model, newdata = my_data)

my_data$err <- (predictions - my_data$qsec)
# Step 2 : Plot Prediction with residuals
ggplot(data = my_data) + 
  geom_point(aes(x=mpg, y = qsec)) + 
  geom_line(aes(x = mpg, y = predictions)) +
  geom_line(aes(x=mpg, y=err), colour = "red")+
  