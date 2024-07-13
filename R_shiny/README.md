# About this session
In this session, we will undertake an hands-on session to learn R Shiny.

## Required Libraries
- library(tidyverse)

- library(shiny)

- Rtools

## Shiny R?
- Shiny is made by R Studio (Posit).

- Shiny is a platform for creating interactive R programs embedded into a web page.

- With Shiny, we can create simple, yet powerful, web-based interactive data products in R (time and initial dependency on designers).

- Following our sesssion on ML, let’s say that you created a prediction algorithm. You can very easily create web input form that calls your prediction algorithm in R and displays the results (interactive data solution).

- When I was learning R, " ... it lacks the flexibility of full featured (and more complex) solutions".

## Shiny prerequisites
### Shiny doesn’t really require it, but as with all web programming, a little knowledge of html, css and js is very helpful

- html gives a web page structure and sectioning as well as markup instructions

- css gives the style

- js for interactivity

### There are more than sufficient materials online on Shiny R.

## Context
- Let’s say we create a prediction algorithm to predict risk for developing diabetes.

- You’re hoping patients and caregivers will be able to enter their data and, if needed, take preventative measures.

- You want to create a web site so that users can input the relevant predictors and obtain their prediction.

## Getting started
- Make sure you have the latest release of R installed

- If on windows, make sure that you have Rtools installed

- install.packages("shiny")

- Great tutorial at http://rstudio.github.io/shiny/tutorial/

- Basically, this lecture is walking through that tutorial offering some of our insights

## Project Directory
### A shiny directory containing at least two parts. The two parts can also be combined as a file but we will start off with them as 2 different files.

- ui.R : This controls the look i.e., the user’s interface.

- server.R : This controls what our app does.