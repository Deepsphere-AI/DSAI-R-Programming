
/*******************************************************************************************

File Name       :   CSLAB_NLP_SENTENCE_ANNOTATORS_V1
Purpose 	:   A Program for Senetence Annotators using NLP in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   22/01/2019 16:28 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				22/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Senetence Annotators using NLP in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

require("NLP")
require("openNLP")

## Some text.
vAR_CSLAB_s <- paste(c("Pierre Vinken, 61 years old, will join the board as a ",
             "nonexecutive director Nov. 29.\n",
             "Mr. Vinken is chairman of Elsevier N.V., ",
             "the Dutch publishing group."),
           collapse = "")

vAR_CSLAB_s <- as.String(vAR_CSLAB_s)

vAR_CSLAB_sent_token_annotator <- Maxent_Sent_Token_Annotator()

vAR_CSLAB_sent_token_annotator

vAR_CSLAB_a1 <- annotate(vAR_CSLAB_s, vAR_CSLAB_sent_token_annotator)

## Extract sentences.
vAR_CSLAB_s[vAR_CSLAB_a1]

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
