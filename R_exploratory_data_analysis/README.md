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

######### 

Data Prepaaration Stage

## read in our data in any format ... read.csv(), read_csv(), read_excel(), fromJSON()

#covid_data

## Inspect the data ... head(), names(), glimpse()
str(covid_data)

## Select and group the data (if necessary) ... filter(), subset()
covid_data %>% 
  subset(states == "Kaduna") %>% 
  group_by(states, month) %>% 
  summarize(count = n()) %>% 
  as.data.frame()
  
  
  ##########
  Univariate Analysis Stage:
  
  ## obtain summary statistics ... mean(), median(), and quantile()

summary(covid_data)


Under univariate analysis, we still visualise

## visually represent the distribution of the variable/data ... bar plots, histograms, boxplots

set.seed(234)
##  Create a Q-Q plot for total_death variable
ggplot(covid_data, aes(sample = total_death)) +
  stat_qq() 
  
  
  Normal sample Q-Q plot
  library(ggplot2)
set.seed(234)
# Create a Q-Q plot for the Sepal.Length variable
ggplot(iris, aes(sample = Sepal.Length)) +
  stat_qq() #
  #geom_abline(intercept = 0, slope = 1)

# Interpretation


The Q-Q plot of the Sepal.Length variable shows that the distribution is approximately normally distributed.

The points on the Q-Q plot fall close to the line, which indicates that the distribution of the variable is similar to the normal distribution.

We observed few points that fall not on the line, (i.e., these values are slightly lower than what would be expected under a normal distribution).

This could be due to a number of factors (measurement error or outliers).

Overall, the Q-Q plot suggests that the Sepal.Length variable is approximately normally distributed.



## Multivariate Analysis Stage:

Under multivariate analysis, we explore relationships between the different variables in the dataset.

## explore relationships between variables ... cor()

#covid_data

## We can use scatterplots and boxplots
str(covid_data)

par(mfrow = c(2, 1), mar = c(4, 4, 2, 1))
hist(subset(covid_data, states == "Ogun")$total_death, col = "green")
hist(subset(covid_data, states == "Oyo")$total_death, col = "green")

## DataExplorer

# Using special data exploration libaries in R (DataExplorer, explore, smartEDA, GGally )

##data distribution
covid_data %>% introduce()

#covid_data %>% plot_intro()

## Missing Values ----

#covid_data %>% plot_missing()

#covid_data %>% profile_missing()

## Continuous Features ----

#covid_data %>% plot_density()

#covid_data %>% plot_histogram()

## Categorical Features ----

#covid_data %>% plot_bar()

## Relationships ----

#covid_data %>% plot_correlation(maxcat = 15)


## explore 

#covid_data %>% explore() ## if you run: This function can only be used in an interactive R session

#covid_data %>% select(-states) %>% explore() ## if you run: This function can only be used in an interactive R session

## Describe ----

#covid_data %>% describe_all()

#covid_data %>% describe_cat(states)

## Explore All Variables ----

# covid_data %>%
#   explore_all(
#     target = total_death,
#     ncol   = 3
#   )

## Explore Bivariate Plot ----
# covid_data %>%
#   explore(
#     target = total_death,
#     var    = total_death,
#     var2   = states
#   )

## Auto EDA?

Automatic Exploratory Data Analysis (Auto EDA)) is a technique used to quickly summarize and understand a dataset.

It is a process based on summary statistics and visualizations that help to identify the underlying structure and trends of a dataset.

Used to identify data patterns in a dataset which becomes useful in determining the best model parameters and/or the need to further refine the dataset.

Useful in data science and machine learning since it helps to quickly understand the characteristics and trends in the data.


## Reporting explore

Faster html plotting !



## Running this on the learning platform may take some minutes
# covid_data %>%
#   report(
#     target      = total_death,
#     output_dir  = "reports/",
#     output_file = "covid_death_nigerian_states_plots.html"
#   )

## Reporting DataExplorer

Interactive report 

## Running this on the learning platform may take some minutes
# covid_data %>%
#   create_report(
#     output_file  = "covid_data_report",
#     output_dir   = "reports/",
#     y            = "total_death",
#     report_title = "EDA Report - Covid Death in Nigerian States"
#   )

## Wasting time on manual exploration?
#names(ai_papers_sample)

ai_papers_sample %>% introduce()

#ai_papers_sample %>% describe()

#ai_papers_sample %>% plot_missing()

## Auto Limitations
This weakness will be clear if you can explore ai_paper_sample in an interactive environment.

The question is how do we get insight of columns that are not numerical and not clearly factors?

This is your first step into text analysis

## ai_papers_sample %>% explore() ## if you run: This function can only be used in an interactive R session

emmyCool <- ai_papers_sample$abstract %>% 
    str_replace_all("[^A-Za-z]"," ") %>% 
    VectorSource() %>% 
    Corpus() %>% 
    tm_map(tolower) %>% 
    tm_map(removeWords, stopwords("english")) %>% 
    tm_map(stripWhitespace) 

##

set.seed(234)
# w_cloud <- wordcloud(emmyCool, max.words = 250, 
#           colors = brewer.pal(8, "Dark2"), 
#           scale=c(5,1), random.order = FALSE)



dtm <- DocumentTermMatrix(emmyCool)
freq = colSums(as.matrix(dtm))
ord = order(freq, decreasing = TRUE)
plot = data.frame(words = names(freq), count = freq)
plot = subset(plot, plot$count > 150) 
plot <- plot[with(plot, order(-count)), ]

#plot

## Conclusion
In this section we have learnt about how to perform quick data exploration (manually and automatically). We also learnt about exploring texts.

Feedback Please, do not hesitate to give your feedback or seek clarification regarding this section. Scan the barcode.

