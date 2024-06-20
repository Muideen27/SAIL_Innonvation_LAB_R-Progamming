# Understanding dates formats
#- %d = day as number (0-31)
#- %a = weekday abbreviated
#- %A = weekday unabbreviated
#- %m = month (00-12)
#- %b = month abbreviated
#- %B = month unabbrevidated
#- %y = 2 digit year
#- %Y = four digit year

aba = c("14feb2023", "22feb2023", "18jun2023", "28jun2023", "14jul2023")

layi = as.Date(aba, "%d%b%Y")

layi

layi[2] - layi[1]

as.numeric(layi[2]-layi[1])

# Converting to Julian

yomi = Sys.Date()

weekdays(yomi)

months(yomi)

julian(yomi)


# Lubridate

library(lubridate)

ymd("230628")

mdy("06/28/2023")

dmy("28-06-2023")

# Handling times in dates

ymd_hms("2011-08-03 10:15:03")

ymd_hms("2011-08-03 10:15:03",tz="GMT")

?Sys.timezone

# Syntax differences in dates
aba = dmy(c("14feb2023", "22feb2023", "18jun2023", "28jun2023", "14jul2023"))

wday(aba[1])

wday(aba[1], label=TRUE)
# *** Practice more with lubridate***
