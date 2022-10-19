
/*******************************************************************************************

File Name       :   CSLAB_FUNCTIONALS_ROLLING_COMPUTATIONS_V1
Purpose 	:   A Program for Rolling Computations in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   17/01/2019 19:14 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				17/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Rolling Computations in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_rollmean <- function(x, n) {
  
    vAR_CSLAB_out <- rep(NA, length(x))

  vAR_CSLAB_offset <- trunc(n / 2)
  
    for (i in (vAR_CSLAB_offset + 1):(length(x) - n + vAR_CSLAB_offset + 1)) {
    
        vAR_CSLAB_out[i] <- mean(x[(i - vAR_CSLAB_offset):(i + vAR_CSLAB_offset - 1)])
  }
 
    vAR_CSLAB_out
}

vAR_CSLAB_x <- seq(1, 3, length = 1e2) + runif(1e2)

plot(vAR_CSLAB_x)

lines(vAR_CSLAB_rollmean(x, 5), col = "blue", lwd = 2)

lines(vAR_CSLAB_rollmean(x, 10), col = "red", lwd = 2)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
