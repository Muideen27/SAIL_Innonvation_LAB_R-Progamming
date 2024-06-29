# Regression Analysis II

## bout this session
In this session, we will learn about multivariable regression, logistic regression and count regressions and how to use R to perform these types of analyses. We will cover the following areas:

- What each concept means

- How to set them up the models in R

- How to interpret their results

- How to assess the fit of the models

- Necessary to have understood

`Regression Analysis I`

- Session will be useful

`Machine Learning`

## Required Libraries

- library(tidyverse)

- library(usingR)

- library(manipulate)

- library(broom)

- library(BSDA)

- library(broom)

- library(ggfortify)


## What is Multivariable Regression?
- Multivariable regression is a type of regression analysis that involves more than one independent variable.

- It is used to predict the value of a dependent variable based on the values of two or more independent variables.

- The goal of multivariable regression is to determine the relationship between the independent variables and the dependent variable, and to use this information to make predictions about future values of the dependent variable.

- For example, if we are interested in predicting the price of a house based on its size, location, and age. We could use multivariable regression to analyse the relationship between these three independent variables (size, location, and age) and the dependent variable (price).

- If we were to present evidence of a relationship between education level (Highest Qualification, X) and wages (measured in Naira/Month)? It is likely, we will consider, `age`, `location`, `gender`, `job type`, `experience` etc.

- Important to note for interpretation that, to consider our results, we would have to demonstrate that we are holding other variables constant.


## Extending the SLR

- The general multivariate linear model extends simple linear regression (SLR) by adding terms linearly into the model.
Yi=β1X1i+β2X2i+…+βpXpi+ϵi=∑k=1pXikβj+ϵi

- Recall the least squares (also, the ML estimates under iid Gaussianity of the errors) minimises
∑i=1n(Yi−∑k=1pXkiβj)2

- Note, that the principle of linearity is linearity in the coefficients. Therefore, an equation as shown below is still a linear model. (We have only squared the elements of the predictors)
Yi=β1X21i+β2X22i+…+βpX2pi+ϵi

## General case

- The equations
∑i=1n(Yi−X1iβ^1−…−Xipβ^p)Xk=0

for k=1,…,p yields p equations with p unknowns.

- Solving the unknown will yield the least squares estimates. (I have saved us the headache of the linear algebra - considering the composition of the cohort.)

- The least squares estimate for the coefficient of a multivariate regression model is the same as regression through the origin with the other regressors removed from both the regressor and outcome by taking residuals.

- By implication, multivariate regression “adjusts” a coefficient for the linear impact of the other variables.

## Set Up a Multivariable Regression Model in R
Similar to our SLR, we can use the lm() function to set up our multivariable regression model.

- The syntax for the lm() function is as follows:

`lm(dependent_variable ~ independent_variable1 + independent_variable2 + ..., data = data_frame)`

## Example of Multivariable Regression in R

For example, if we wanted to predict the mpg of a car based on its weight and number of cylinders.

We are quite familiar with the mtcars dataset (by now). The dataset contains information about the different cars in the Motor Trend magazine. The variables in the dataset include:

- mpg: Miles/(US) gallon
- cyl: Number of cylinders
- disp: Displacement (cu.in.)
- hp: Gross horsepower
- drat: Rear axle ratio
- wt: Weight (1000 lbs)
- qsec: 1/4 mile time
- vs: Engine (0 = V-shaped, 1 = straight)
- am: Transmission (0 = automatic, 1 = manual)
- gear: Number of forward gears
- carb: Number of carburetors

## Obtaining results

Similar to the SLR, once the model has been created, we can use the summary() function to view the results of the regression analysis.

This will provide us with information about the coefficients of the model, as well as other useful information such as the R-squared value and the F-statistic.

## Interpreting the Results of a Multivariable Regression Model

- The output of the summary() function will provide us with a variety of information about our model, including the coefficients for each independent variable, the R-squared value, and the F-statistic.

- The coefficient of each independent variable tells us how much the dependent variable is expected to change when that independent variable is changed by one unit. For example, from our model, the coefficient for wt is −3.1910
, then we can expect that the mpg of the car to reduce by about 3.19
 miles when the weight of the car is increased by one unit (holding other variables constant).

- i.e., the interpretation of a multivariate regression coefficient is the expected change in the response per unit change in the regressor, holding all of the other regressors fixed.

## How to Assess the Fit of a Multivariable Regression Model

Once we have interpreted the results of our multivariable regression model, we can use a variety of techniques to assess the fit of our model.

- The R-squared value tells us how well our model fits the data. The higher the R-squared value, the better our model fits the data (caveat on this).

- The F-statistic tells us whether our model is statistically significant. If the F-statistic is greater than the critical value, then our model is statistically significant.

- =One other technique is to plot the residuals of our model. The residuals are the differences between the observed values and the predicted values of our model. If our model is a good fit, then the residuals should be randomly distributed around zero. We can plot the residuals by running the following code:


## Genralisation

We can apply almost all principles learnt under SLR to multivariable linear regression models

predict(model, new_data)
Fitted values & residuals
All of our SLR characteristics can be extended to mutivariate linear models

Model Yi=∑pk=1Xikβk+ϵi
 where ϵi∼N(0,σ2)

## Fitted responses Y^i=∑pk=1Xikβ^k

Residuals ei=Yi−Y^i

Variance estimate σ^2=1n−p∑ni=1e2i

To get predicted responses at new values, x1,…,xp
, simply plug them into the linear model ∑pk=1xkβ^k

Coefficients have standard errors, σ^β^k
, and β^k−βkσ^β^k

follows a T
 distribution with n−p
 degrees of freedom.

Predicted responses have standard errors and we can calculate predicted and expected response intervals.

## Linear models

- Linear models are considered the single most important applied statistical and machine learning techniqe.

- Some amazing things that you can accomplish with linear models

`It can flexibly fit complicated functions.`

`It can fit factor variables as predictors.`

`It can uncover complex multivariate relationships with the dependent variable.`

`It can build accurate prediction models`

##Logistic Regression

- Humans generally care about outcomes that have two values (great economic values or implications)

`Employee/Client quitting/retained`

`Success/Failure`

`Win/loss`

`Alive/dead`

`etc`

- Recall from our probability distribution, binary, Bernoulli or 0/1 outcomes

## glm function

Logistic regression can be:

- Simple logistic regression

- glm(response ~ explanatory, data = dataset, family = binomial)

- Multiple logistic regression

- glm(response ~ explanatory1 + explanatory2, data = dataset, family = binomial)

- Multiple logistic regression with interaction(s)

- glm(response ~ explanatory1 * explanatory2, data = dataset, family = binomial)

# Regression Analysis II

##Linear regression

`churni=b0+b1tenurei+ei`

churni - 1 if a client leaves, 0 if not

tenurei - How long the client has been with the telco

b0 - probability of a client churning if their tenure is 0

b1 - increase in probability of a client churning for each additional tenure

ei - residual variation due



## Odds
Binary Outcome 0/1    -> churni

Probability (0,1)     -> Pr(churni|tenurei,b0,b1)

Odds (0,∞)            -> Pr(churni|tenurei,b0,b1) / 1−Pr(churni|tenurei,b0,b1)

Log odds (−∞,∞)       -> log(Pr(churni|tenurei,b0,b1) / 1−Pr(churni|tenurei,b0,b1))


## Linear vs. logistic regression
Linear                -> churni = b0 +b1 tenurei + ei

or

               E[churni|tenurei,b0,b1]=b0+b1tenurei

Logistic

                    -> Pr(churni|tenurei,b0,b1)=exp(b0+b1tenurei) / 1+exp(b0+b1tenurei)

or

          log(Pr(churni|tenurei,b0,b1) / 1−Pr(churni|tenurei,b0,b1)) = b0+b1tenurei
          
          
          
## Interpreting Logistic Regression

b0 - Log odds of a client churning if their tenure is zero

b1 - Log odds ratio of a client’s churning probability for every increase in tenure (compared to zero tenure)

exp(b1) - Odds ratio of a client’s churning probability for every increase in tenure (compared to zero tenure)

## Explaining odds

- If you gamble, where outcome is like flipping a coin with success probability p

- You win X (if it comes up heads) but you lose Y (If it comes up tails).

- What should we set X and Y for the game to be fair?

E[earnings]=Xp−Y(1−p)=0

- Implies

Y/X=p/1−p

- The odds can be said as “How much should you be willing to pay for a p probability of winning a Naira?”

(If p>0.5 you will have to pay more if you lose than you will get if you win.)

(If p<0.5 you will have to pay less if you lose than you will get if you win.)

## Helping interpretaion
Intercept: The log-odds of churning when tenure=0 is 0.027

Tenure: For every unit increase in tenure the log-odds of churning decrease by −0.0387
 i.e. the chances of leaving decrease as clients’ tenure increases.

Given p<0.5, we can reject the null hypothesis b1=0
 that one unit increase in tenure does not affect chances of churning.

## Interpreting Odds Ratios

- Odd ratios are not probabilities

- Odds ratio of 1 implies there is no difference in odds

- Log odds ratio of 0 implies there is no difference in odds

- Odds ratio < 0.5 or > 2 commonly a “moderate effect”

- Relative risk Pr(churni|tenurei=0) / Pr(churni|tenurei=0)
 often easier to interpret, harder to estimate

- For small probabilities RR ≈ but they are not the same!


## Conclusion
In this lesson, we have learned about multivariable regression, logistic regression and how to use R to perform these types of analyses.

Read more on odds ratio

Note: Support materials from Cousera & DataCamp

Feedback Please, do not hesitate to give your feedback or seek clarification regarding this section. Scan the barcode.