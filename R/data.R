#' Committee Type Codes
#'
#' @format A data frame with two variables:
#' \describe{
#' \item{\code{committee_code}}{A 1-character alphabetic code assigned to a committee by the Federal Election Commission. The committee type code for a specific committee always remains the same.}
#' \item{\code{committee_type}}{Type of committee as recognized by the FEC.}
#' }
#'
#' For further details and source, see \url{http://www.fec.gov/finance/disclosure/metadata/CommitteeTypeCodes.shtml}
#'
"committee_code"

#' Party Codes
#'
#' @format A data frame with two variables:
#' \describe{
#' \item{\code{party_code}}{A 1-3 character alphabetic code assigned to a party by the Federal Election Commission. The party code for a specific party always remains the same.}
#' \item{\code{party}}{Official name of party as recognized by the FEC.}
#' }
#'
#' For further details and source, see \url{http://www.fec.gov/finance/disclosure/metadata/DataDictionaryPartyCodeDescriptions.shtml}
#'
"party_code"