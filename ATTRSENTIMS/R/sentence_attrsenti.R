#' A sentence attribute sentiment classifier
#'
#' Based on the project Attribute Sentiment Scoring with Online Text Reviews
#' Paper Source: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3395012
#'  @param sentence Give a sentence for attribute sentiment classification
#' @keywords sentiment classifier
#' @export
#' @examples
#'attribute_sentiment_classifer()




###LOAD THE DATA###
load('./data/attr_data.rda')
load('./data/sent_data.rda')
#attr_data<-read.csv('C:/Users/isc22/Dropbox/Linking Attributes and Ratings Code/Auxiliary/AspectLists/Aspect_List_ASCTR_IMS.csv',stringsAsFactors = FALSE)
#sent_data<-read.csv('C:/Users/isc22/Dropbox/Linking Attributes and Ratings Code/Auxiliary/Sentiment scores/Sentiment_List_ASCTR_IMS.csv',stringsAsFactors = FALSE)


#' attribute_sentiment_classifer() function
#' Gives attribute class and sentiment class for a sentence
#' Can give both binary and granular sentiment based on type argument
#'@param type, type=1 is binary and type=2 is granular
attribute_sentiment_classifer <- function(sentence,type){

sentence_words<-tokenizers::tokenize_words(sentence[[1]],stopwords=tm::stopwords("en"))
sentence_tab <- table(sentence_words[[1]])
sentence_tab <- data.frame(word = names(sentence_tab), count = as.numeric(sentence_tab))

aspect_list<-c()
senti_list<-c()

source("word_attr.R")
source("word_senti.R")

for(k in 1:nrow(sentence_tab))
{

  # To check if current word is an aspect word

  cur_word<-as.character(sentence_tab[['word']])[k]
  if(isattr(cur_word))
  {
    aspect_cur<-retattr(cur_word)
    aspect_list<-c(aspect_list,aspect_cur)
  }
  # To check if current word is a sentiment word

  else if(issenti(cur_word))
  {
    if(type==1){
    sent_cur<-retsentiment(cur_word,1)
    senti_list<-c(senti_list,sent_cur)}
    else
    {
      sent_cur<-retsentiment(cur_word,2)
      senti_list<-c(senti_list,sent_cur)
    }
  }
}

# Finding the major aspect and sentiment score for the sentence
attribute_max<- names(which.max(table(aspect_list)))
senti_score= mean(senti_list,na.rm = TRUE)

output_list<-c("Attribute"=attribute_max,"Sentiment" = senti_score)

return(output_list)

}





