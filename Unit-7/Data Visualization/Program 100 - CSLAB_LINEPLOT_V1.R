
/*******************************************************************************************

File Name       :   CSLAB_LINEPLOT_V1
Purpose 	:   A Program for Line Plot in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   03/26/2015 23:24 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				03/26/2015		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Line Plot in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

vAR_CSLAB_x <- c(1:5); 

vAR_CSLAB_y <- vAR_CSLAB_x # create some data 

par(pch=22, col="red") # plotting symbol and color 

par(mfrow=c(2,4)) # all plots on one page 

vAR_CSLAB_opts = c("p","l","o","b","c","s","S","h") 

for(i in 1:length(opts))
  
{ 
 
vAR_CSLAB_heading = paste("type=",vAR_CSLAB_opts[i]) 
  
plot(vAR_CSLAB_x, vAR_CSLAB_y, type="n", main=heading) 
  
lines(vAR_CSLAB_x, vAR_CSLAB_y, type=opts[i]) 
  
}

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
