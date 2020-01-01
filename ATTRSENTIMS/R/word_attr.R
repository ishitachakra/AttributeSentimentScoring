#' A word attribute classifier
#'
#' Based on the project Attribute Sentiment Scoring with Online Text Reviews
#' Paper Source: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3395012
#'  @param word Give a word whose attribute you want to classify
#' @keywords attribute classifier
#' @export
#' @examples
#' is_attr()
#' retattr()
#' getattr()


load('./data/attr_data.rda')
#attr_all<-read.csv('C:/Users/isc22/Dropbox/Linking Attributes and Ratings Code/Auxiliary/AspectLists/Aspect_List_ASCTR_IMS.csv',stringsAsFactors = FALSE)


#'isattr() function tells whether word is an attribute word
#'@param word Give a word whose attribute you want to classify
#'@return boolean True or False, True if word is attribute word
isattr <- function(word){
  isaspect=FALSE
  for(i in 1:nrow(attr_data))
  {

    cur_word=attr_data[i,]$word
    if(grepl(word, cur_word)){
      isaspect=TRUE
      break
    }
  }
  return(isaspect)
}

#'retattr() function returns the attribute class of an attribute word
#'@param word Give a word whose attribute you want to classify
#'#'@return string , attribute word
retattr <- function(word){
  attrclass=""
  for(i in 1:nrow(attr_data))
  {
    cur_word=attr_data[i,]$word
    if(grepl(word, cur_word)){
      wd=attr_data[i,]$attribute
      attrclass=wd
      break
    }
  }
  return(attrclass)
}

#' getattr() function that prints the attribute class of a word
#' @param word Give a word whose attribute you want to classify
getattr <- function(word){
  attrclass=retattr(word)

  if(attrclass=="")
    print("This word is not a restaurant attribute word")
  else
    print(paste0("The attribute sentiment class of this word is: ", attrclass))
}



