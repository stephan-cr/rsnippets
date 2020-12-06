library(RCurl)
library(XML)

urldata <- getURL('https://backports.debian.org/changes/buster-backports.html')
table_nr <- 2
t <- readHTMLTable(urldata, header=TRUE, trim=TRUE, stringAsFactors=FALSE,
                   which=table_nr, as.data.frame=TRUE)
