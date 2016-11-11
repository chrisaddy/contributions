party_code <- as_data_frame(readHTMLTable(content(GET("http://www.fec.gov/finance/disclosure/metadata/DataDictionaryPartyCodeDescriptions.shtml"),
												  "text",
												  encoding = "ISO-8859-1"),
										  header = TRUE)$`NULL`) %>%
				rename(party_code = `Party Code  `,
					   party = `Party Code  Description`,
					   notes = `Notes`) %>%
				select(-notes)

devtools::use_data(party_code, compress = "bzip2", overwrite = TRUE)