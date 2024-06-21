# EDA & Auto EDA

## Important Notice
- Get Twitter API

- Get Google Map API

- Get OpenAI API

## About this session

1. At the end of the lesson, learners should be able to:

- Explain the concept of EDA/Auto EDA and why they are important.

- Demonstrate the use of the Auto EDA package to summarize a dataset.

- Utilize EDA/auto EDA package(s) to identify data patterns.

- Explore text columns and gain insight on key words

2. Necessary to have understood:

- Gathering Data

- Cleaning Data

3. Session will be useful for:

- Data Analysis

- Reporting/Reproducing Data Analysis

## Required Libraries
- library(tidyverse)
- library(learnr)
- library(DataExplorer)
- library(explore)
- library(SmartEDA)
- library(wordcloud2)
- library(readxl)
- library(DataExplorer)
- library(tidytext)
- library(wordcloud)
- library(topicmodels)
- library(tm)
- library(visNetwork)
- library(qdapRegex)
- library(syuzhet)
- library(ggraph)

## EDA 

Exploratory Data Analysis (EDA) is a systematic process of investigating a dataset to gain insights about its structure, distributions, and relationships.


It is an important step in the data science process, as it can help you to understand your data and to identify potential problems or opportunities.

## Steps in EDA

- Data Exploration
- Data Cleaning
- Data Visualization
Data Exploration

Data exploration is the process of getting to know your data. This includes investigating the structure of the data, the distributions of the variables, and the relationships between variables.

- Data Cleaning

Data cleaning is the process of improving the quality of the data. This includes identifying and correcting errors, missing values, and outliers.

- Data Visualization

Data visualization is the process of representing data graphically. This can help you to understand the data and to identify patterns and trends.

## Benefits of EDA
- EDA can provide a number of benefits, including:

- Helping us to Understand our data

- Helping us to Identify potential problems or opportunities

- Improving the quality of your data

- Helping us to Communicate our findings to others

- Making better decisions

## Recall Probability/Data Distribution
We can recall some distribution types:

- Gaussian Distribution

- Uniform Distribution

- Exponential Distribution

- Rectangular Distribution: When there is an arbitrary outcome that lies between certain bounds.

## Plotting Distribution
We made use of some visualisations (plots):

Histogram

Boxplot

Density Plot

Q-Q Plot

## Q-Q Plots
Q-Q plots are used to find the type of distribution for a random variable. We can tell the type of distribution using the power of the Q-Q plot.

## 3 Guided Steps in Data Exploration
We are all conversant with these 3 steps by now. We will however, briefly discuss how to apply these techniques.

Data Preparation Stage

Univariate Analysis Stage

Multivariate Analysis Stage



## Auto EDA?

Automatic Exploratory Data Analysis (Auto EDA)) is a technique used to quickly summarize and understand a dataset.

It is a process based on summary statistics and visualizations that help to identify the underlying structure and trends of a dataset.

Used to identify data patterns in a dataset which becomes useful in determining the best model parameters and/or the need to further refine the dataset.

Useful in data science and machine learning since it helps to quickly understand the characteristics and trends in the data.



## Auto Limitations
This weakness will be clear if you can explore ai_paper_sample in an interactive environment.

The question is how do we get insight of columns that are not numerical and not clearly factors?

This is your first step into text analysis


## Conclusion
In this section we have learnt about how to perform quick data exploration (manually and automatically). We also learnt about exploring texts.

Feedback Please, do not hesitate to give your feedback or seek clarification regarding this section. Scan the barcode.

