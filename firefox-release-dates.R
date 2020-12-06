library(RCurl)
library(XML)

urldata <- getURL('https://wiki.mozilla.org/RapidRelease/Calendar')

feature_release_table_nr <- 1
t <- readHTMLTable(urldata, header=TRUE, trim=TRUE, stringAsFactors=FALSE,
                   which=feature_release_table_nr, as.data.frame=TRUE)
names(t) <- sub('\n', '', sub(' ', '', names(t), fixed=TRUE), fixed=TRUE)
