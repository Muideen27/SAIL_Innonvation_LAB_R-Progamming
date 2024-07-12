# Machine Learning Basics with R

## About this session

In this session, we will explore the basics of Machine Learning and how to use R to create and evaluate models. Amongst the areas we will cover are:

- Introduction (Data Preparation)
- Supervised learning
- Unsupervised learning
- Data Splitting
- Model Specification
- Model Training
- Model Evaluation
- Feature Importance
- Old & New Ways (Caret & Tidymodels)

## Necessary to have understood

- Regression Analysis

## Session will be useful for

- Data Analysis
- Artificial Intelligence

# Required Libraries for Machine Learning Basics with R

To run the examples and code in this session, you will need the following R libraries:

- tidyverse
- usingR
- manipulate
- broom
- BSDA
- ggfortify
- caret
- kernlab
- ISLR
- Hmisc
- gridExtra
- MASS
- palmerpenguins
- skimrpalmerpenguins
- tidyr

# Predictions in Various Contexts

This README.md file discusses the predictive applications in different sectors:

## Governments
- Predict social insurance costs including unemployment benefits, pension payments, and NHS costs.

## Google
- Predict whether users will click on an ad.

## Amazon
- Predict which items customers are likely to order next.

## Insurance Companies
- Predict individuals' risk of being involved in accidents.

## Universities/SAIL
- Predict which students will complete their programs.

Each entity uses predictive analytics to optimize operations, enhance decision-making, and improve outcomes in their respective domains.

# Supervised and Unsupervised Learning

## Supervised Learning

Supervised learning is a type of machine learning where the model is trained on labeled data. In supervised learning:

- The data has been labeled with the correct output.
- The model is trained to predict the output based on the input.
- Examples include classification tasks (predicting categories) and regression tasks (predicting continuous values).

## Unsupervised Learning

Unsupervised learning is a type of machine learning where the model is trained on unlabeled data. In unsupervised learning:

- The data does not have a correct output initially.
- The model is trained to find patterns and relationships in the data.
- Examples include clustering (grouping similar data points) and dimensionality reduction (simplifying the data).

Both supervised and unsupervised learning are essential techniques in machine learning, each suited to different types of tasks and data scenarios.


# Model Evaluation

Model evaluation is a critical step in machine learning to assess how well a model performs on unseen data. Here's how it typically works:

- **Splitting the Data**: The data is divided into a training set and a test set.
  
- **Training the Model**: The model is trained on the training set, where it learns the patterns in the data.
  
- **Evaluating the Model**: The trained model is then evaluated on the test set, which contains unseen data. This evaluation allows us to measure how well the model generalizes to new, unseen data.
  
Model evaluation helps in understanding the performance of the model and ensures that it can make accurate predictions on data it has not seen during training.


# Building a Model

In this section, we will commence our ML journey with a classification problem, building on our previous experience with regression analysis and logistic regression.

## Libraries and Data

To start, we will use the `caret` package as a foundation for our machine learning model. Additionally, we will load the `tidyverse` library and import our data using the following steps:


# Load packages
library(caret)
library(tidyverse)

# Load data
data <- read.csv("your_data")

# Split the data into a training set and a test set

# Build your model
model <- train(label ~ ., data = training_data, method = "glm")

# Evaluate the model on the test set
prediction <- predict(model, newdata = testing_data)
confusionMatrix(prediction, testing_data$label)


