# Statistical Inference 
##### Author: Muideen Ilori

## About the session

in this session we will learn about the concept of statistical inference without saddling us with the Mathematics of the Algebra. 

The concepts has beeen chosen among so many we will continue to meet along our data Science journey because of their importance in understanding `Regression Analysis and Machine Learning`


## Required Libraries

- library(tidyverse)
- library(usingR)
- library(BSDA)

## Statistical Inference Defined

The process of drawing a formal conclusion from data (Statistical Inference)
As a data scientist, we can we must try to control or account for uncertainty around our data and estimation, particularly when we attempt making inferences about a population from samples

## Motivation 1:

Predicting Election Results

- Current population of Nigeria: Over 220 Million (Worldometer, July 2023)
- Registered voters in Nigeria: Over 93 million (INEC, 2023)
- Importance of correctly predicting election results (Who is going to win?)
- We have a clear prediction target:

**Y = Percentage of Electrorates hatwillVote for each Candidate**

### Considerations:

- We can't poll 93 million people before the election (Sampling)
- Even for smaller electorate (200), people can change their minds before election date (Uncertainty)

## Motivation 2:

is lockdown effective in curbing COVID-19 spread in Africa?
- Lockdown or COVID-19?
- Economic hardships == Severe global economic downturn (IMF, 2020)
- Global GDP growth to fall by 3.0
- Cumulative output loss of $9 trillion over 2020-21 (4th, 5th & 6th)
- Greater impacts than 2009 global financial crisis (IMF, 2020
- 5.25 million new claims of unemployment benefits (Week ending April 11, 2020)
- 6.6 million new claims the week before that
- What is happening in developing countries?
- Policy persistence with little evidence, polics, no vaccines, etc

we have some inference problems

- Is lockdown effective?
- How long should we use it?

## Concerns

As Data Scientist, we will have some concerns when it comes to reaching
conclusions about a population. Some of these could be:

- How representative is our sample of the population that we'd like to draw
inferences about?
- Are there observed and/or unobserved variables that may affect our
conclusions?
- Are there underlining biaseness created by missing data or by the
design/conduct of our analysis?
- How randomn is our data and how do we use or adjust for it?
- Are we estimating mechanism or a phenomena in the study?

- Depending on the situation, undertaking Statistical Inference will usually require navigating some sets of assumptions and tools before drawing conclusions from data.

## Goals of inference

- 1. Quantifying the uncertainty of an estimate of a population behaviour (the
proportion of people who wit vole for a candidate in an election).
- 2. Determining if a population quantity as a benchmark value ("is the treatment effective?
- 3. Infering a mechanistic relationship when quantitas are measured with noise
("What is the slope of Nigerian income masticity for luxury goods?
- 4 Determining the impact of a policy? (If we increase lockdown intensity, will
COVID-1 spread reduce?")

## Key terms to note

- Randomization
- Bouncing unobserved may confound inferences of interest
- Random sampling

Obtaining data that is representative of the population
- Sampling modes

"Creating a model for the sampling process (iid)-independent and identically
distributed
- Hypothesis testing
Decision making under uncertainly
- Confidence intervals
Qualifying uncertainty in an estimation
- Study design
Designing as experiment to minimize biases and variability
- Nonparametric bootstrapping
the process of using the data to create inferences, with minimal model assumptions

## Significance testing 

A type of statistical inference is called significance testing in which a hypothesis is tested using an appropriate statistical model, with associated tests of significance.

Significance testing includes the following types of tests

- Z-tests

- Student’s t-test

- Chi-square tests

## Confidence Interval
A confidence interval is an interval associated with a particular test or procedure, which provides a likely range of outcomes for the procedure given a certain confidence level or alpha value. A confidence interval gives an estimate of an area of interest in a population from which a sample is taken.

## P-values

- Most common measure of “statistical significance”
`Idea`: Suppose nothing is going on - how unusual is it to see the estimate we got?
`Approach:`

- 1. Define the hypothetical distribution of a data summary (statistic) when “nothing is going on” (null hypothesis)

- 2. Calculate the summary/statistic with the data we have (test statistic)

- 3. Compare what we calculated to our hypothetical distribution and see if the value is “extreme” (p-value)

## Hypothesis testing

- Hypothesis testing is concerned with making decisions using data

- A null hypothesis is specified that represents the status quo, usually labeled H0

- The null hypothesis is assumed true and statistical evidence is required to reject it in favor of a research or alternative hypothesis

## Hypothesis testing errors

- Usually, the alternative hypotheses are typically of the form <, > or ≠

- There are four possible outcomes of our statistical decision process

| Null Hypothesis (H0) | Alternative Hypothesis (Ha) | Result                        |
|----------------------|-----------------------------|-------------------------------|
| H0                   | H0                          | Correctly accept null         |
| H0                   | Ha                          | Type I error                  |
| Ha                   | Ha                          | Correctly reject null         |
| Ha                   | H0                          | Type II error                 |


## One Sample Z-Tests

In this example, we will use a Z-test to test if the class average daily interaction with the learning materials is 100 minutes.

Let’s assume that sample are obtained from normal distributions, with a known standard deviation.

- Randomnly select 30 participants

- We might want to test the hypothesis that

- H0:μ=100

- Ha:μ≠100

- where μ is the population Average interaction with learning materials seconds per day.

## Two Sample Z-Tests
In this example, we will use a Z-test to identify whether two population means are the same or different.

We will assume that the class attendance of the two populations are obtained from normal distributions, with the same standard deviation, but possibly different means.

- Group EmmyCool mean = 56

- Group Tope mean = 80

- Sample size of both populations = 30

- We might want to test the hypothesis that

- H0:
 Group EmmyCool average = Group Tope average

- Ha:
 Group EmmyCool average ≠
 Group Tope average
 
## IID random variables
- When random variables are `iid if they are independent and identically distributed

- This is often the default for random samples

- Many important theories of statistics are founded on assuming that variables are iid

## Asymptotics
The behavior of statistics as the sample size approaches infinity (or some other relevant number)

Discussion
- An estimator is consistent if it converges to what you want to estimate

- Consistency is neither necessary nor sufficient for one estimator to be better than another

## Summary
A type of statistical inference, significance testing, is used to test a hypothesis using appropriate statistical model. A confidence interval is an interval associated with a particular test or procedure that provides a likely range of outcomes for the given confidence level or alpha value. An example of Z-test has been used to illustrate the concept.

## Exercise Brief
The aim of this exercise is to establish team building, team working and primarily assess participants’ ability to summarise data and undertake statistical inference

## Exercise Instruction
Form a group of your choice consisting of 4 - 6 participants

Carefully select your group members

Summarise the covid data by regions

Test each region against other to test if their average death number from COVID-19 is same.

Present your test as a Data Scientist

Upload your final code and conclusion onto Padlet under your group’s name

Participants have till noon of tomorrow to complete the tasks.

## P-values
The P-value is the probability under the null hypothesis of obtaining evidence as extreme or more extreme than would be observed by chance alone

If the P-value is small, then either H0
 is true and we have observed a rare event or H0
 is false
 
## Power
- Power is the probability of rejecting the null hypothesis when it is false

- A type II error (a bad thing, as its name would suggest) is failing to reject the null hypothesis when it’s false; the probability of a type II error is usually called β

- Note Power =1−β