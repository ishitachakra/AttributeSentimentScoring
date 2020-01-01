#' Attribute words that were discovered in the project
#' Attribute Sentiment Scoring with Online Text Reviews: Chakraborty Kim and Sudhir 2019
#'
#' Contains 2722 human annotated filtered attribute words belonging to
#' attributes commonly found in restaurant domain
#' Food,Service, Ambiance,Price, Location
#' Also contains context words that frequently occur in the restaurant
#' domain like day of week, week of month, who accompanied etc.
#'For a detailed description of how these words were selected refer the paper
#' @format A data frame with 2722 rows and 3 variables:
#' \describe{
#'   \item {attribute}{the attribute class of the word}
#'   \item{word}{word occuring in restaurant reviews}
#'   \item{wordtype}{all words here are of attribute type}
#'}
#' @source \url{https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3395012}
"attr_data"
