# AttributeSentimentScoring
All code and data related to the project Attribute Sentiment Scoring with Online Text Reviews
For better understanding of our files and code refer our paper- https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3395012
Attribute Sentiment Scoring with online Text Reviews: Accounting for Language Structure and Attribute Self-Selection

# Aspect_List_ASCTR_IMS.csv

Human annotated dataset of 2000+ attribute words and their respective classes used in the paper. Attributes are highly specific to restaurant industry namely food, service, ambiance, price and location. There are some words that imply context (Day of week, Month of Year, time, accomplices etc.)

# Sentiment_List_ASCTR_IMS.csv
Human annotated dataset of 1600+ sentiment words and their respective classes used in the paper.Sentiment words are classified both for 3 levels of sentiment (Positive, Negative, Neutral) as well as 5 levels of sentiments


# ATTRSENTIMS 
Package that contains data and functions in R to use our attribute sentiment lexicon

To install this package you can load devtools library in R and do an install_github("ATTRSENTIMS")

Steps:

Open R studio/ R editor

install.packages("devtools")

library(devtools)

install_github("ATTRSENTIMS")
