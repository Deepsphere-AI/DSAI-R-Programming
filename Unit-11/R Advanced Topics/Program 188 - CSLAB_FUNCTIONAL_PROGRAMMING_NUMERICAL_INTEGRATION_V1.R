
/*******************************************************************************************

File Name       :   CSLAB_FUNCTIONAL_PROGRAMMING_NUMERICAL_INTEGRATION_V1
Purpose 	:   A Program for Numerical Integration in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 17:55 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Numerical Integration in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_midpoint <- function(f, a, b) {
  
    (b - a) * f((a + b) / 2)

}

vAR_CSLAB_trapezoid <- function(f, a, b) {
  
    (b - a) / 2 * (f(a) + f(b))
}

vAR_CSLAB_midpoint(sin, 0, pi)

trapezoid(sin, 0, pi)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
