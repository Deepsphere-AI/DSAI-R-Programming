
/*******************************************************************************************

File Name       :   CSLAB_NLP_ANALYZING_TEXTS_FEATURE_HASHING_V1
Purpose 	:   A Program for Anazying Texts by Feature Hashing using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 18:22 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Anazying Texts by Feature Hashing using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

install.packages("text2vec")
install.packages("data.table")
install.packages("magrittr")

library(text2vec)
library(data.table)
library(magrittr)

data("movie_review")
setDT(movie_review)
setkey(movie_review, id)

set.seed(2017L)

vAR_CSLAB_all_ids = movie_review$id

vAR_CSLAB_train_ids = sample(vAR_CSLAB_all_ids, 4000)

vAR_CSLAB_test_ids = setdiff(vAR_CSLAB_all_ids, vAR_CSLAB_train_ids)

vAR_CSLAB_train = movie_review[J(vAR_CSLAB_train_ids)]

vAR_CSLAB_test = movie_review[J(vAR_CSLAB_test_ids)]

vAR_CSLAB_prep_fun = tolower
vAR_CSLAB_tok_fun = word_tokenizer

vAR_CSLAB_it_train = itoken(vAR_CSLAB_train$review, 
             preprocessor = vAR_CSLAB_prep_fun, 
             tokenizer = vAR_CSLAB_tok_fun, 
             ids = vAR_CSLAB_train$id, 
             progressbar = FALSE)
vAR_CSLAB_vocab = create_vocabulary(vAR_CSLAB_it_train)

vAR_CSLAB_train_tokens = vAR_CSLAB_train$review %>% 

vAR_CSLAB_prep_fun %>% 

vAR_CSLAB_tok_fun

vAR_CSLAB_it_train = itoken(vAR_CSLAB_train_tokens, 
                  ids = vAR_CSLAB_train$id,
                  # turn off progressbar because it won't look nice in rmd
                  progressbar = FALSE)

vAR_CSLAB_vocab = create_vocabulary(vAR_CSLAB_it_train)

vAR_CSLAB_h_vectorizer = hash_vectorizer(hash_size = 2 ^ 14, ngram = c(1L, 2L))

vAR_CSLAB_t1 = Sys.time()

vAR_CSLAB_dtm_train = create_dtm(vAR_CSLAB_it_train, vAR_CSLAB_h_vectorizer)

print(difftime(Sys.time(), vAR_CSLAB_t1, units = 'sec'))

vAR_CSLAB_t1 = Sys.time()

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
