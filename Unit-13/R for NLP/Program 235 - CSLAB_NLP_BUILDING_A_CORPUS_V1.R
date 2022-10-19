
/*******************************************************************************************

File Name       :   CSLAB_NLP_BUILDING_A_CORPUS_V1
Purpose 	:   A Program for Building a Corpus using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 10:12 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Building a Corpus using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(tm)

vAR_CSLAB_tweets_source <- VectorSource(vAR_CSLAB_tweets_text)

# Make a volatile corpus: tweets_corpus
vAR_CSLAB_tweets_corpus <- VCorpus(vAR_CSLAB_tweets_source)

# Print out the tweets_corpus
vAR_CSLAB_tweets_corpus

vAR_CSLAB_tweets_corpus[[15]]

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
