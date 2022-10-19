
/*******************************************************************************************

File Name       :   CSLAB_DEEP_LEARNING_LINEAR_REGRESSION_V1
Purpose 	:   A Program for Linear Regression in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   24/01/2019 14:05 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				24/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Linear Regression in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(tensorflow)

vAR_CSLAB_p <- 3L

vAR_CSLAB_X <- tf$placeholder("float", shape = shape(NULL, p), name = "x-data")

vAR_CSLAB_Y <- tf$placeholder("float", name = "y-data")

vAR_CSLAB_W <- tf$Variable(tf$zeros(list(p, 1L)))

vAR_CSLAB_b <- tf$Variable(tf$zeros(list(1L)))

vAR_CSLAB_Y_hat <- tf$add(tf$matmul(X, W), b)

vAR_CSLAB_cost <- tf$reduce_mean(tf$square(Y_hat - Y))

vAR_CSLAB_generator <- tf$train$GradientDescentOptimizer(learning_rate = 0.01)

vAR_CSLAB_optimizer <- generator$minimize(cost)

vAR_CSLAB_init <- tf$global_variables_initializer()

vAR_CSLAB_session <- tf$Session()

vAR_CSLAB_session$run(vAR_CSLAB_init)

set.seed(123)

vAR_CSLAB_n <- 250

vAR_CSLAB_x <- matrix(runif(vAR_CSLAB_p * vAR_CSLAB_n), nrow = vAR_CSLAB_n)

vAR_CSLAB_y <- matrix(2 * vAR_CSLAB_x[, 1] + 1 + (rnorm(vAR_CSLAB_n, sd = 0.25)))

vAR_CSLAB_feed_dict <- dict(X = vAR_CSLAB_x, Y = vAR_CSLAB_y)

vAR_CSLAB_epsilon <- .Machine$double.eps

vAR_CSLAB_last_cost <- Inf

while (TRUE) {
    
  vAR_CSLAB_session$run(vAR_CSLAB_optimizer, feed_dict = vAR_CSLAB_feed_dict)
    
  vAR_CSLAB_current_cost <- vAR_CSLAB_session$run(vAR_CSLAB_cost, feed_dict = vAR_CSLAB_feed_dict)
    
  if (vAR_CSLAB_last_cost - vAR_CSLAB_current_cost < vAR_CSLAB_epsilon) break
    
  vAR_CSLAB_last_cost <- vAR_CSLAB_current_cost
    
}

vAR_CSLAB_r_model <- lm(vAR_CSLAB_y ~ vAR_CSLAB_x)

vAR_CSLAB_tf_coef <- c(vAR_CSLAB_session$run(vAR_CSLAB_b), vAR_CSLAB_session$run(vAR_CSLAB_W))

vAR_CSLAB_r_coef  <- vAR_CSLAB_r_model$coefficients

print(rbind(vAR_CSLAB_tf_coef, vAR_CSLAB_r_coef))

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
