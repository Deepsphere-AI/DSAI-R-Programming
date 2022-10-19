
/*******************************************************************************************

File Name       :   CSLAB_MULTILEVEL_MODELS_V1
Purpose 	:   A Program for Multilevel Models in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 21:29 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
  
## Program Description : A Program for Multilevel Models in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

library(lattice)

set.seed(10101010)

vAR_CSLAB_x <- rnorm(100)

vAR_CSLAB_y1 <- vAR_CSLAB_x[1:25] * 2 + rnorm(25, mean=1)

vAR_CSLAB_y2 <- vAR_CSLAB_x[26:50] * 2.6 + rnorm(25, mean=1.5)

vAR_CSLAB_y3 <- vAR_CSLAB_x[51:75] * 2.9 + rnorm(25, mean=5)

vAR_CSLAB_y4 <- vAR_CSLAB_x[76:100] * 3.5 + rnorm(25, mean=5.5)

vAR_CSLAB_d <- data.frame(x=vAR_CSLAB_x, y=c(vAR_CSLAB_y1,vAR_CSLAB_y2,vAR_CSLAB_y3,vAR_CSLAB_y4), f=factor(rep(letters[1:4], each=25)))

# plot

xyplot(y ~ vAR_CSLAB_x, groups=f, data=vAR_CSLAB_d,auto.key=list(columns=4, title='Beard Type', lines=TRUE, points=FALSE, cex=0.75),type=c('p','r'), ylab='Number of Pirates', xlab='Distance from Land')


/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

