
/*******************************************************************************************

File Name       :   CSLAB_FUNCTIONAL_PROGRAMMING_MUTABLE_STATES_V1
Purpose 	:   A Program for Mutable State in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 17:38 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Mutable State in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_new_counter <- function() {
  
    i <- 0
  
    function() {
    
        i <<- i + 1
    
        i
  }

}

vAR_CSLAB_counter_one <- vAR_CSLAB_new_counter()

vAR_CSLAB_counter_two <- vAR_CSLAB_new_counter()

vAR_CSLAB_counter_one()

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
