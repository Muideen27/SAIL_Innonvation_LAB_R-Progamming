# About this session
### We will cover basic ideas behind obtaining data ready for analysis

- Finding and extracting data
- Principles of tidy data and how to produce tidy data
- Implementing a range of R packages

### Necessary to have understood:

- The Data Scientist’s Toolbox
- R Programming

### Session will be useful:

- Data Exploration
- Reporting/Reproducing Data Analysis

## Definition of data

Data is a collection of facts or figures that can be `used to make decisions or solve problems`. It can be quantitative or qualitative, and it can be structured or unstructured.

- Sources: Data.org & Wikipedia

## The four things you should have:

- Raw data.
- Tidy data set.
- Your code book - Describing your variables and values in 2.
- An explicit steps and notes on how you move from 1 -> 2 -> 3

## The raw data

- Hand-entered numbers or text collected (survey, questionnaires, observations etc.)
- Unfortunately Excel file with many worksheets
-Nested JSON data from scraping the web, Twitter, LinkedIn, etc.

*Discussing raw data when:*

No manipulation has taken place on the data, nothing has been cleaned, no summary of any or no software applied on it.

## The tidy data.

- One variable per column
- One observation per row
- One table per subject
- Common column(s) in the case of multiple tables (in the table that allows them to be linked(allowed linking or merging)).

*Other notes:*

- A row with variable name at the top of each file.
- Sensible variable names human readable (DeathRate X DRate)
- Saved one file per table.