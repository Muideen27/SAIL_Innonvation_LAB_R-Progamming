fileUrl <- "https://www.ekoanalytics.net/data/covid19_nigeria_states.csv"

download.file(fileUrl, destfile = "./SAIL_Innonvation_LAB_R-Progamming/data_science/covid_19.csv", method = "curl")

list.files("./SAIL_Innonvation_LAB_R-Progamming/data_science/")

covidData <- read.table("./SAIL_Innonvation_LAB_R-Progamming/data_science/covid_19.csv", sep = ",", header = TRUE)

head(covidData)
