#' Sentiment words that were discovered in the project
#' Attribute Sentiment Scoring with Online Text Reviews: Chakraborty Kim and Sudhir 2019
#'
#' Contains 1692 human annotated filtered sentiments words
#' most commonly expressed in restaurant reviews
#' both binary (Positive, Negative, Neutral) and 5 level Sentiments
#'For a detailed description of how these words were selected refer the paper
#' @format A data frame with 1692 rows and 3 variables:
#' \describe{
#'  \item {sentiment_binary}{1:Negative 2: Neutral 3: Positive}
#'  \item{sentiment_five}{1:5 where 1 is most negative and 5 is most positive}
#'  \item{word}{sentiment word occuring in restaurant reviews}
#' }
#' @source \url{https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3395012}
"sent_data"
