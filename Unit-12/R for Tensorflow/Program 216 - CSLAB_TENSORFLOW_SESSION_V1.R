
/*******************************************************************************************

File Name       :   CSLAB_TENSORFLOW_SESSION_V1
Purpose 	:   A Program for Tensorflow Sessions in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   18/01/2019 9:21 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				18/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Tensorflow Sessions in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(tensorflow)

vAR_CSLAB_x_data <- runif(100, min=0, max=1)

vAR_CSLAB_y_data <- vAR_CSLAB_x_data * 0.1 + 0.3

vAR_CSLAB_W <- tf$Variable(tf$random_uniform(shape(1L), -1.0, 1.0))

vAR_CSLAB_b <- tf$Variable(tf$zeros(shape(1L)))

vAR_CSLAB_y <- vAR_CSLAB_W * vAR_CSLAB_x_data + vAR_CSLAB_b

vAR_CSLAB_loss <- tf$reduce_mean((vAR_CSLAB_y - vAR_CSLAB_y_data) ^ 2)

vAR_CSLAB_optimizer <- tf$train$GradientDescentOptimizer(0.5)

vAR_CSLAB_train <- optimizer$minimize(vAR_CSLAB_loss)

vAR_CSLAB_sess = tf$Session()

vAR_CSLAB_sess$run(tf$global_variables_initializer())

for (step in 1:201) {
  
    vAR_CSLAB_sess$run(train)
  
    if (step %% 20 == 0)
    
        cat(step, "-", vAR_CSLAB_sess$run(W), vAR_CSLAB_sess$run(vAR_CSLAB_b), "\n")
}

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
