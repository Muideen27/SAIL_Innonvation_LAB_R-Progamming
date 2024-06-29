# Example churning

# Load the necessary library
library(dplyr)

# Load the dataset (assuming it's in a CSV file called "churning.csv")
churning <- read.csv("C:\\Users\\Open User\\OneDrive\\Desktop\\Muideen_SAIL\\WA_Fn-UseC_-Telco-Customer-Churn.csv")

#Churn tenure MonthlyCharges
head(churning)

# Select the Churn, tenure, and MonthlyCharges columns from the churning dataset
churning %>% 
  dplyr::select(Churn, tenure, MonthlyCharges)

# Load the necessary library
library(dplyr)

# Assuming 'churning' dataset is already loaded and 'Churn' column exists

# Create a binary churn variable (0 for "No", 1 for "Yes")
churning$churn <- ifelse(churning$Churn == "No", 0, 1)

# Fit a logistic regression model
model2 <- glm(churn ~ tenure + MonthlyCharges, data = churning, family = binomial)

# Display summary of the logistic regression model
summary(model2)


# Load the necessary library (assuming dplyr is already loaded for dataset manipulation)
library(dplyr)

# Assuming 'churning' dataset is already loaded and 'Churn' column exists

# Create a binary churn variable (0 for "No", 1 for "Yes")
churning$churn <- ifelse(churning$Churn == "No", 0, 1)

# Fit a linear regression model to predict churn based on tenure and MonthlyCharges
lmChurn <- lm(churning$churn ~ churning$tenure + churning$MonthlyCharges)

# Display coefficients of the linear regression model
summary(lmChurn)$coef
