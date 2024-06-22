#Statistical Inference 
####Author: Muideen Ilori

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