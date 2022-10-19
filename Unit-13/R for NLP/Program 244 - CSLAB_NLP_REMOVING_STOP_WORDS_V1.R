
/*******************************************************************************************

File Name       :   CSLAB_NLP_REMOVING_STOP_WORDS_V1
Purpose 	:   A Program for Removing Stop Words from a Text using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 11:52 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Removing Stop Words from a Text using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_all_stops <- c("word1", "word2", stopwords("en"))

#stopwords("en")

# Print text without standard stop words
removeWords(vAR_CSLAB_text, stopwords("en"))

# Add "coffee" and "bean" to the list: new_stops
vAR_CSLAB_new_stops <- c("coffee", "bean", stopwords("en"))

# Remove stop words from text
removeWords(vAR_CSLAB_text, vAR_CSLAB_new_stops)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
