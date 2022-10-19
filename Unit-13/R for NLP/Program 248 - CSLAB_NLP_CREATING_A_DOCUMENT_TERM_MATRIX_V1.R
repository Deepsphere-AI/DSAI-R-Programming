
/*******************************************************************************************

File Name       :   CSLAB_NLP_CREATING_A_DOCUMENT_TERM_MATRIX_V1
Purpose 	:   A Program for Creating a Document Term Matrix using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 12:52 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Creating a Document Term Matrix using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_clean_corpus <- function(corpus){
  vAR_CSLAB_corpus <- tm_map(corpus, stripWhitespace)
  vAR_CSLAB_corpus <- tm_map(corpus, removePunctuation)
  vAR_CSLAB_corpus <- tm_map(corpus, content_transformer(tolower))
  vAR_CSLAB_corpus <- tm_map(corpus, removeWords, stopwords("en"))
    return(vAR_CSLAB_corpus)
}
# Apply your customized function to the tweet_corp: clean_corp
vAR_CSLAB_clean_corp <- vAR_CSLAB_clean_corpus(vAR_CSLAB_tweets_corpus)

# Create the dtm from the corpus: 
vAR_CSLAB_tweets_dtm <- DocumentTermMatrix(vAR_CSLAB_clean_corp)

# Print out tweets_dtm data
vAR_CSLAB_tweets_dtm

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
