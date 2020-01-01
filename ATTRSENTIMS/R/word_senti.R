#' A word sentiment classifier
#'
#' Based on the project Attribute Sentiment Scoring with Online Text Reviews
#' Paper Source: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3395012
#'  @param word Give a word whose sentiment you want to classify
#' @keywords sentiment classifier
#' @export
#' @examples
#' issenti()
#' retsentiment()
#' getbinsentiment()
#' getgransentiment()


load('./data/sent_data.rda')
#sent_data<-read.csv('C:/Users/isc22/Dropbox/Linking Attributes and Ratings Code/Auxiliary/Sentiment scores/Sentiment_List_ASCTR_IMS.csv',stringsAsFactors = FALSE)


#'issenti() function tells whether word is an sentiment word
issenti <- function(word){
  for(i in 1:nrow(sent_data))
  {
    issenti=FALSE
    cur_word=sent_data[i,]$word
    if(grepl(word, cur_word)){
      issenti=TRUE
      break
    }
  }
  return(issenti)
}

#' sentiment() function
#' This function allows you to get binary (Positive,Neutral,Negative)classes
#' more granular(1,2,3,4,5) classes for sentiments
#' for frequent sentiment words appearing in restaurant reviews
#' for binary pass type as 1 and for granular pass 2
retsentiment <- function(word,type){
  sentclass=""
  for(i in 1:nrow(sent_data))
  {
    cur_word=sent_data[i,]$word
    if(grepl(word, cur_word)){
      if(type==1)
      {
      wd=sent_data[i,]$sentiment_binary
      }
      else{wd=sent_data[i,]$sentiment_five}

     sentclass=wd
      break
    }
  }
  return(sentclass)
}
#' getbinsentiment() function to print the binary sentiment associated with a word
getbinsentiment <- function(word){
  binsentclass=retsentiment(word,1)

  if(binsentclass=="")
    print("This word is either not a sentiment word for restaurant context or out of scope of vocabulary")
  else
    {print("You asked for binary sentiments : 1 - Negative 2 Neutral 3 Positive")
    print(paste0("The binary sentiment class of this word is: ", binsentclass))}
}


#' getgransentiment() function to print the granular sentiment associated with a word
getgransentiment <- function(word){
  getgransentclass=retsentiment(word,2)

  if(getgransentclass=="")
    print("This word is either not a sentiment word for restaurant context or out of scope of vocabulary")
  else
  {print("You asked for granular sentiments : 1 - Very Negative 2 Negative 3 Neutral 4 Positive 5 Very Positive")
    print(paste0("The granular sentiment class of this word is: ", getgransentclass))}
}

