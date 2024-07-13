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

## To run it
- In R, change to the directories with these files and type runApp()

- or put the path to the directory as an argument

- It should open an browser window with the app running

## Image example
- Let’s build an example with an image

- How about we create a histogram of data

- Put a slider on so that the user has to guess the mean

## Tighter control over style
### All of the style elements are handled through ui.R

- For students with a lot of experience in html, js, css it would be a breeze and probably easier and more flexible than the R html controls in ui.R

- bslib has changed so many things about R Shiny (Read more on this)

## Other things Shiny can do
- Allow users to upload or download files

- Have tabbed main panels

- Have editable data tables

- Have a dynamic UI

- User defined inputs and outputs

- Put a submit button so that Shiny only executes complex code after user hits submit

## Distributing a Shiny app
- The quickest way is to send (or put on github or gist or dropbox or whatever) someone the app directory and they can then call runApp

- You could create an R package and create a wrapper that calls runApp

- Of course, these solutions only work if the user knows R

- Another option is to run a shiny server

- Requires setting up a (Shiny server)

- Probably easiest if you use one of the virtual machines where they already have Shiny servers running well (for example, on AWS)
- Avoid putting system calls in your code (this is one of the first things many of us do for fun, but it introduces security concerns)