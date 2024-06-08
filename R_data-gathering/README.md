# About this session
### We will cover basic ideas behind obtaining data ready for analysis

- Finding and extracting data

- Principles of tidy data and how to produce tidy data

- Implementing a range of R packages

### Necessary to have understood:

- The Data Scientist’s Toolbox

- R Programming

### Session will be useful:

- Data Exploration.

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

## The code book

- Information about your variable (units, source, coveat) that are not included in the tidy data.

- Information about the summarisation applied (grouping, treated options-missing, outliers) choices you made

- information about your Research Methodology

*Other notes:*

- A Word/text file format.

- Segment referred to as a Research Methodology or Study design if it is experimental. This should provide a detailed description of haow data was collected.

- Segment referred to as the `Code book`. That should describe your variable(s) and their unit(S).

## Instruction list

- R or Python Scripts (in this fellowship)

- The raw data is the input

- The tidy data (the processed data) is the output

- There are no parameters to the script

## Reality of scripting all the instructions

It will be impossible to script every step in the Data Generating process (DGP). We should provide instructions like:

- Step 1 - read raw file - state the software, the version and parameters e.g., x=1, y=2, z=3

- Step 2 - Split the sample and run the software separately for each sample (state sampling method, e.g., set seed)

- Step 3 - take specific column(s) and/or row(s) of the output file for each sample and apply a function …

## Get/set your working directory

#### Key you know your working directory

#### 2 important commands in managing your working directory getwd() and setwd().

#### Understand absolute and relative paths

- Absolute - setwd("/Users/agiftajala/Documents/data_science")

- Relative - setwd("./data_science"), setwd("../")

#### Note the difference between Macs & Windows’ paths: setwd("C:\\Users\\agiftajala\\Downloads")


## Directories:- checking and creating directories

- Check to see if the directory exists file.exists("name_of_directory")

- Create a directory if it doesn’t exist dir.create("name_of_directory") 

- Attempt creating a directory called “data_science” if it doesn’t exist

if(!file.exists("data_science")){
  
  dir.create("data_science")
  
}

## Getting data from the internet - download.file()
- Downloads a file from the internet

- For reproducibility, we are encouraged to use download.file

- Key parameters to note: url, destfile, method

- Useful for downloading tab-delimited, csv, and other flat files

*Webscraping*

**Webscraping:** Programatically extracting data from the HTML code of websites.