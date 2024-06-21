# About this session

Data visualization is an important tool for understanding and communicating your findings. R is a powerful language for data visualization. The importance of this section can not be over-emphasised.

## Learning Objectives
By the end of this lesson, you will be able to:

- Understand the basic syntax for producing visualizations with R

- Appreciate the grammar of ggplot2

- Recognize the importance of data visualization

- Analyze and interpret data from visualizations

- Use R to create basic visualizations

- Use R to create interactive visualizations

- Necessary to have understood

- Data Exploration
- Session will be useful

- Reporting/Reproducing Data Analysis

## Required Libraries
- library(tidyverse)
- library(DataExplorer)
- library(explore)
- library(SmartEDA)
- library(wordcloud2)
- library(readxl)
- library(plotly)

## Recalling EDA?
- Exploratory plots are “quick and dirty”

- Let you summarize the data (usually graphically) and highlight any broad features

- Explore basic questions and hypotheses (and perhaps rule them out)

- Suggest modeling strategies for the “next step”

## Grammar of Graphics
The grammar tells us that, a statistical graphic is:

- a mapping from data

- to aesthetic attributes (colour, shape, size)

- of geometric objects (points, lines, bars).

The plot may be drawn on a specific coordinate and may require some transformations of the data.

## Base & Lattice
### Base plotting
- Idea of a blank canvas and build up from down (palette model)

- Start with plot then continue to add/modify (text, lines, points, axis)

- Plot is just a series of R commands

## Lattice plotting
- Use a single function to create plots - (xyplot, bwplot, etc.)

- Entire plot is specified at once (margins/spacing set automatically)

- Impossible to “add” to the plot once it’s created (think of our padlet barcode)

## ggplot2 Plotting Systems
- Overcoming weaknesses of base and lattice plotting

- Easier and more intuitive to use

- Makes many choices (default) but can be customised and allows us to annotate by “adding”

## Basics: qplot()
- Works much like the plot () in base graphics system

- Similar to ggplot2, plots are made up of aesthetics and geoms

- It however hides what goes on underneath. ggplot() is flexible in handling qplot’s limitations


## ggplot2 Components
- data - (dataframe)

- aesthetic - maps our data (to color, size)

- geoms - geometric objects (points, lines, shapes)

- facets - for conditional plots

- stats - for transforming our dat (quantiles, binning, smoothing)

- scales - defining what scales for aesthetic (eg., West = green, East = yellow, North = blue)

- coordinate system -(coord_cartesian() , coord_flip() , coord_fixed())


## Check more on https://ggplot2-book.org/coord.html
## Building Plots with ggplot2
- Closest analogy for plotting in ggplot2 is the “artist’s palette”.

- Plots are built up in layers

- Plot the data

- Overlay it with necessary summary

- Annotate on it/Metadata


## Annotate on plots
Labels:

- xlab()
- ylab()
- labs()
- ggtitle()
Recall, we can modify the “geom” (geom_point(), geom_smooth())

Use theme() for things that will affect the entire plot

- e.g., theme(legend.position = "none")
Two standard appearance themes are included

- theme_gray(): (gray background) - default

- theme_bw(): (plain background)

## Saving Plots
- We will first need to specify files to save our images using a () such as jpeg(), png(), svg() or pdf(). Additional argument indicating the width and the height of the image can be also used.

- We then create the plot

- Necessary to close the file with dev.off()

## Notes and further resources
- Make use of ggplot2 materials on github for auto EDA
https://ggplot2.tidyverse.org/

- Make use of plotly materials on github for auto EDA
https://plotly.com/r/