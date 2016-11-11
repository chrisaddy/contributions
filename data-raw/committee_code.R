library(dplyr)
library(XML)
library(httr)
library(readr)

###FEC Data

committee_code <- as_data_frame(readHTMLTable(content(GET("http://www.fec.gov/finance/disclosure/metadata/CommitteeTypeCodes.shtml"),
										"text",
										encoding = "ISO-8859-1"))$`NULL`)
names(committee_code) <- c("committee_code", "committee_type", "explanation")

committee_code <- committee_code %>% select(-explanation)

devtools::use_data(committee_code, compress = "xz", overwrite = TRUE)