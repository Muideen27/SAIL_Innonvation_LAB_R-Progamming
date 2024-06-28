# R_regression_analysis

## About this session

In this session, we will learn about regression analysis.

### Learning Objectives

#### 1. Visualise and fit linear regression models
- Introduction to linear regression
- Plotting data and fitting a linear regression line
- Interpretation of the regression line

#### 2. Understand model coefficients and make predictions from linear regression models
- Explanation of model coefficients
- Making predictions using the regression equation

#### 3. Assess the quality of the linear regression model
- Evaluation metrics (e.g., R-squared, MSE)
- Interpretation of evaluation results

#### 4. Undertake similar steps with logistic regression models
- Introduction to logistic regression
- Differences from linear regression
- Visualizing and interpreting logistic regression results

#### 5. Introduce us to Time Series analysis
- Basics of time series data
- Time series components (trend, seasonality, noise)
- Popular techniques (e.g., ARIMA, Exponential Smoothing)

### Necessary to have understood

- Statistical Inference

### Session will be useful

- Machine Learning

## Required Libraries

- `tidyverse`
- `usingR`
- `manipulate`
- `broom`
- `BSDA`
- `ggfortify`

## Regression

Regression is a statistical modeling method used to explore the relationship between a dependent (response) variable and one or more explanatory variables.

### Purpose

Regression analysis helps predict the values of the dependent variable based on known values of the explanatory variables.

#### Familiar Terms

- **Dependent Variable (Response Variable)**: The variable that is predicted or explained by the independent variables.
  
- **Independent Variables (Explanatory Variables)**: These variables influence or explain changes in the dependent variable.

#### Types of Regression

- **Linear Regression**: Used when the dependent variable is numeric and the relationship between variables is linear.

- **Logistic Regression**: Used when the dependent variable is binary or categorical, and the relationship is modeled using the logistic function.

#### Variants of Regression

- **Simple Linear/Logistic Regression**: Involves one explanatory variable.

- **Multivariable Regression**: Involves multiple explanatory variables.

## Regression Genesis Questions

1. **Why do children from very tall parents tend to be tall, but a little shorter than their parents, and why children from very short parents tend to be short, but a little taller than their parents? (‘Regression to the mean’)**

   Regression to the mean means extreme cases tend not to persist over time. In the context of height, it suggests that children of very tall parents are likely to be tall but not as tall as their parents, and children of very short parents are likely to be short but not as short as their parents.

2. **Can we use parents’ heights to predict how tall their children will be?**

   Yes, regression analysis can be used to model the relationship between parents’ heights (explanatory variables) and children’s heights (dependent variable), allowing us to make predictions based on the observed data.

3. **Can we investigate the differences in children’s height in relation to their parents’ heights (residual variation)?**

   Yes, by analyzing the residuals (the differences between predicted and actual children’s heights), we can understand how much variation in children’s heights is explained by their parents’ heights and how much is unexplained (residual variation).

4. **Can we quantify what impact inheritance has on children’s height outside their parental height?**

   Regression analysis can quantify the impact of inheritance on children’s height by estimating coefficients for parental heights and assessing their statistical significance and effect sizes.

5. **Can we ascertain what will be necessary assumptions to generalize findings beyond the data used?**

   To generalize findings beyond the data used, it's essential to consider assumptions such as:
   - The relationship between parents’ and children’s heights is linear or appropriately modeled.
   - The data used is representative of the population of interest.
   - There are no unobserved factors influencing height that are not accounted for in the model.
   - The relationship observed is causal (if making causal claims) and not merely correlational.

   Validating these assumptions helps ensure that findings can be reasonably applied or generalized beyond the specific dataset used in the analysis.


## Galton’s Data

- **Source**: Francis Galton, a statistician and cousin of Charles Darwin, coined the terms and concepts of regression and correlation.
- **Data**: Available in the `UsingR` library.
- **Population**: Data includes only heterosexual couples.
- **Correction for Gender**: Female heights were corrected by multiplying them by 1.08 to account for gender differences.

Galton's dataset, found in the `UsingR` library, provides valuable historical data on height correlations within heterosexual couples, reflecting early statistical insights into regression and correlation.


## Middle Using Least Squares

### Definition

The "middle" of children's height can be defined as the value of μ that minimizes the sum of squared deviations:

\[ \sum_{i=1}^{n} (Y_i - \mu)^2 \]

where:
- \( Y_i \) is the height of child \( i \),
- \( \mu \) is the parameter representing the middle.

### Interpretation

Minimizing the sum of squared deviations is akin to finding the physical center of mass of the histogram of children's heights. This approach leads to \( \mu = \bar{X} \), the mean height of the children.

In statistical terms, defining the "middle" involves using least squares to find the parameter that minimizes the sum of squared deviations from the mean height \( \bar{X} \).


