# About this session

### Sequel to our earlier discussions on Tidy Data, we will learn about data cleaning, covering handling of strings and dates.

- Changing character case

- Splitting characters

- vectorisation with vector

### Necessary to have understood

- Gathering Data

- R Programming

### Session will be useful

- Data Exploration

- Reporting/Reproducing Data Analysis

## Notes on text in data sets
### Names of variables:

- Use lower case when possible

- Avoid duplicateion

- Avoid dots, white spaces and underscore

### Variables with character values

- Treat variables with character as factors (depending on application)

- Make use of descriptive (TRUE/FALSE instead of 0/1, Male/Female instead of 0/1 or M/F)

## Handling Dates in R

"Date-time data can be frustrating to work with in R."

"R commands for date-times are generally unintuitive and change depending on the type of date-time object being used."

"Methods we use with date-times must be robust to time zones, leap days, daylight savings times, and other time related quirks."

Source: Lubridate Team (Github/tidyverse/lubridate)

## Understanding dates formats
- %d = day as number (0-31)
- %a = weekday abbreviated
- %A = weekday unabbreviated
- %m = month (00-12)
- %b = month abbreviated
- %B = month unabbrevidated
- %y = 2 digit year
- %Y = four digit year

## Notes and further resources
- Make use of stringr material on github for handling strings (cheatsheet available there)
https://github.com/tidyverse/stringr

Make use of lubridate material on github for dates (cheatsheet available there)
https://github.com/tidyverse/lubridate


