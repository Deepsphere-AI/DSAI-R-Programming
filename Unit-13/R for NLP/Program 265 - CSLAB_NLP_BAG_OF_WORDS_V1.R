
/*******************************************************************************************

File Name       :   CSLAB_NLP_BAG_OF_WORDS_V1
Purpose 	:   A Program for Bag of Words using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 17:48 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Bag of Words using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(readr)

install.packages("tidyverse")
install.packages("tidytext")
install.packages("SnowballC")

library(tidyverse)
library(tidytext)
library(SnowballC)

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "womens-ecommerce-clothing-reviews/Womens Clothing E-Commerce Reviews.csv"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_df <- read_csv(vAR_CSLAB_FILE_PATH)

#vAR_CSLAB_df <- read_csv("C:/DeepSphere.AI/R Tutorial/Unit-13/R for NLP/Data/womens-ecommerce-clothing-reviews/Womens Clothing E-Commerce Reviews.csv")

vAR_CSLAB_df

glimpse(vAR_CSLAB_df)

vAR_CSLAB_df %>%
  select(`Review Text`) %>%
  unnest_tokens(word, `Review Text`) %>%
  count(word, sort = TRUE)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
