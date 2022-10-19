
/*******************************************************************************************

File Name       :   CSLAB_SUPPORT_VECTOR_MACHINES_V1
Purpose 	:   A Program for Support Vector Machines in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   15/01/2019 19:18 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				15/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
  
## Program Description : A Program for Support Vector Machines in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook 

data(iris)

attach(iris)
 
## classification mode

# default with factor response:

vAR_CSLAB_model <- svm(Species ~ ., data = iris)
 
# alternatively the traditional interface:

vAR_CSLAB_x <- subset(iris, select = -Species)

vAR_CSLAB_y <- Species
 
vAR_CSLAB_model <- svm(vAR_CSLAB_x, vAR_CSLAB_y) 
 
print(vAR_CSLAB_model)

summary(vAR_CSLAB_model)
 
# test with train data

vAR_CSLAB_pred <- predict(vAR_CSLAB_model, vAR_CSLAB_x)

# (same as:)

vAR_CSLAB_pred <- fitted(vAR_CSLAB_model)
 
# Check accuracy:

table(vAR_CSLAB_pred, vAR_CSLAB_y)
 
# compute decision values and probabilities:

vAR_CSLAB_pred <- predict(vAR_CSLAB_model, vAR_CSLAB_x, decision.values = TRUE)

attr(vAR_CSLAB_pred, "decision.values")[1:4,]
 
# visualize (classes by color, SV by crosses):

plot(cmdscale(dist(iris[,-5])),
     
vAR_CSLAB_col = as.integer(iris[,5]),
     
vAR_CSLAB_pch = c("o","+")[1:150 %in% model$index + 1])
 
## try regression mode on two dimensions
 
# create data

vAR_CSLAB_x <- seq(0.1, 5, by = 0.05)

vAR_CSLAB_y <- log(vAR_CSLAB_x) + rnorm(vAR_CSLAB_x, sd = 0.2)
 
# estimate model and predict input values

vAR_CSLAB_m   <- svm(vAR_CSLAB_x,vAR_CSLAB_y)
 
vAR_CSLAB_new <- predict(vAR_CSLAB_m, vAR_CSLAB_x)
 
# visualize

plot(vAR_CSLAB_x, vAR_CSLAB_y)

points(vAR_CSLAB_x, log(vAR_CSLAB_x), col = 2)

points(vAR_CSLAB_x, new, col = 4)


/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************