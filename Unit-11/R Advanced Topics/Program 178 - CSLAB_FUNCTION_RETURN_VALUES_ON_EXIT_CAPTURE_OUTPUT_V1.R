
/*******************************************************************************************

File Name       :   CSLAB_FUNCTION_RETURN_VALUES_ON_EXIT_CAPTURE_OUTPUT_V1
Purpose 	:   A Program for Return Values on Exit Capture Output in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 15:13 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Return Values on Exit Capture Output in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_capture.output2 <- function(code) {
  
    vAR_CSLAB_temp <- tempfile()
  
    on.exit(file.remove(vAR_CSLAB_temp), add = TRUE)

    sink(vAR_CSLAB_temp)
  
    on.exit(sink(), add = TRUE)

  force(code)
  
    readLines(vAR_CSLAB_temp)
}

vAR_CSLAB_capture.output2(cat("a", "b", "c", sep = "\n"))

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
