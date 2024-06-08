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

## Example -  Our covid-19 data

- ![Link to covid_19 data - ekoanalytics.net](https://ekoanalytics.net/data-catalogue.html)

## Using R to download the file from the web

fileUrl <- "https://ekoanalytics.net/data/covid19_nigeria_states.csv"

download.file(fileUrl, destfile = "./data_science/covid_19.csv", method = "curl")

list.files("./data_science")
[1] "covid_19.csv"                                 
[2] "nigeria_intra_Africa_trade_connectedness.xlsx"
dateDownloaded <- date()

dateDownloaded
[1] "Mon Jun 26 19:28:54 2023"

## Important notes about download.file()
- We can use download.file() when the url starts with http

- Same will work on Windows even if the url starts with https

- With Mac however, we may need to set method = “curl” if the url starts with https

- Download time may depend on the file size

- Record when the download takes place (last accessed in academic practice).

## Reading downloaded/local files
After downloading needed file(s), in our case the covid_data, we then need to know how to read files from our local drive(s).

### Loading flat files - read.table()

- read.table() can be the default function for reading data into R

- It is flexible and robust but in some cases will require more parameters

- Parameters such as; file, header, sep, row.names, nrows

- Related: read.csv(), read.csv2()

- I am a proponent of file_type specific function or a more general function (easyr)

- We should note that reading big data into RAM - may cause some problems. There are so many ways to handle big data when your RAM is small.

## covid_data example
covidData <- read.table("./data_science/covid_19.csv")

head(covidData)

Error in scan(file = file, what = what, sep = sep, quote = quote, dec = dec,  : line 1 did not have 3 elements

### Example: Reading our covid data
covidData2 <- read.table("./data_science/covid_19.csv", sep=",", header=TRUE)

head(covidData2)

if you experience the error: cannot open the connection, your path to the file needs to be corrected

### Example: Reading our covid data
read.csv sets sep=“,” and header=TRUE

covidData3 <- read.csv("./data_science/covid_19.csv")

head(covidData3)

if you experience the error: cannot open the connection, your path to the file needs to be corrected

### Some other important parameters
- *nrows* : Number of rows to read from the file (e.g. nrows=10 will read 10 lines).

- *skip* : Number of lines to skip before starting to read the file

- *quote* : You can tell R whether there are quoted values quote="" means no quotes.

- *na.strings* : Used to set the character that represents a missing value.

*Quotation marks ` or ” placed in data values, can cause some troubles in reading flat file, setting quote=“” often resolves the problem.*

## Excel files

*The file format still remains one of the most widely used file format (sharing data).*

### Download Nigeria trade excel file

Recall how we downloaded our covid_data.

fileUrl <- "https://ekoanalytics.net/data/nigeria_intra_Africa_trade_connectedness.xlsx"

download.file(fileUrl, destfile = "./data_science/nigeria_africa_trade.xlsx", method = "curl")

list.files("./data_science")

dateDownloaded <- date()

dateDownloaded

## xlsx packages

read.xlsx(), read.xlsx2() {xlsx package}

library(readxl)

naijaTrade <- read_excel("./data_science/nigeria_africa_trade.xlsx")

head(naijaTrade)

## Reading specific rows and columns

library(readxl)

subset row 1-4 and column 2 - 3

naijaTradeSubset <- read_excel("./data_science/nigeria_africa_trade.xlsx")[1:4,2:3]

naijaTradeSubset


## Notes

- To write out an Excel file, we can use writexl(), write.xlsx () amongst other. Please, note varying arguements for each function you intend to use.

- I suggest that you save your data in comma separated files (.csv) or tab separated files (.tab/.txt) as they are easier to distribute.

_ For writing and manipulating Excel files, You can look at: (XLConnect package)

## JSON
JSON = Javascript Object Notation

Lightweight data storage

It is a common format for data from APIs (Application Programming Interfaces)

JSON structure is similar to that of XML but they are different interms of syntax/format.

Data stored as: 
  - Numbers (double)
  - Strings (double quoted)
  - Boolean (true or false)
  - Array (ordered, comma separated enclosed in square brackets [])
  - Object (unorderd, comma separated collection of key:value pairs in curley brackets {})
  
  ## Example JSON file
  ![Example JSON file](https://api.github.com/users/bunmiaj/repos)
  
## Reading JSON data {jsonlite package}
  
library(jsonlite)

ajJsonData <- fromJSON("https://api.github.com/users/bunmiaj/repos")

names(ajJsonData )

ajJsonData$name

## Nested objects in JSON
library(jsonlite)

ajJsonData <- fromJSON("https://api.github.com/users/bunmiaj/repos")

names(ajJsonData$owner)

ajJsonData$owner$repos_url
  

## Writing data frames to JSON
library(jsonlite)
myjson <- toJSON(iris, pretty=TRUE)
cat

## Convert back to JSON
library(jsonlite)
myjson <- toJSON(iris, pretty=TRUE)
iris2 <- fromJSON(myjson)
head(iris2)

## mySQL
Widely used open source database software
Often used in internet based applications
Data are structured in:
  - Databases
  - Tables within databases
  - Fields within tables
Each row is referred to as a record

![http://www.mysql.com/](http://www.mysql.com/)