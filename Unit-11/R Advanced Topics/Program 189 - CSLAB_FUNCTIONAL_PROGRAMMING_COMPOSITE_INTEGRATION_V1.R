
/*******************************************************************************************

File Name       :   CSLAB_FUNCTIONAL_PROGRAMMING_COMPOSITE_INTEGRATION_V1
Purpose 	:   A Program for Composite Integration in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 18:11 hrs
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

vAR_CSLAB_midpoint_composite <- function(f, a, b, n = 10) {
  
    vAR_CSLAB_points <- seq(a, b, length = n + 1)
  
    vAR_CSLAB_h <- (b - a) / n

  vAR_CSLAB_area <- 0
  
    for (i in seq_len(n)) {
    
        vAR_CSLAB_area <- vAR_CSLAB_area + vAR_CSLAB_h * f((vAR_CSLAB_points[i] + vAR_CSLAB_points[i + 1]) / 2)
  }
  
    vAR_CSLAB_area
}

vAR_CSLAB_trapezoid_composite <- function(f, a, b, n = 10) {
  
    vAR_CSLAB_points <- seq(a, b, length = n + 1)
  
    vAR_CSLAB_h <- (b - a) / n

  vAR_CSLAB_area <- 0
  
    for (i in seq_len(n)) {
    
        vAR_CSLAB_area <- vAR_CSLAB_area + h / 2 * (f(vAR_CSLAB_points[i]) + f(vAR_CSLAB_points[i + 1]))
  }
  
    vAR_CSLAB_area
}

vAR_CSLAB_midpoint_composite(sin, 0, pi, n = 10)

vAR_CSLAB_midpoint_composite(sin, 0, pi, n = 100)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
