
/*******************************************************************************************

File Name       :   CSLAB_DEEP_LEARNING_LOGISTIC_REGRESSION_V1
Purpose 	:   A Program for Logistic Regression in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   24/01/2019 14:28 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				24/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Logistic Regression in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

install.packages("caret")

library(caret)

library(MASS)

vAR_CSLAB_cat = cats[c("Sex", "Bwt")]

vAR_CSLAB_y = with(vAR_CSLAB_cat, model.matrix(~ Sex + 0))

vAR_CSLAB_x = as.matrix(vAR_CSLAB_cat[,2])

vAR_CSLAB_trainIndex = createDataPartition(vAR_CSLAB_x, 
                       p=0.7, list=FALSE,times=1)
 
vAR_CSLAB_x_train = as.matrix(vAR_CSLAB_x[trainIndex,])

vAR_CSLAB_x_test = as.matrix(vAR_CSLAB_x[-trainIndex,])

vAR_CSLAB_y_train = as.matrix(vAR_CSLAB_y[trainIndex,])

vAR_CSLAB_y_test = as.matrix(vAR_CSLAB_y[-trainIndex,])

library(tensorflow)

vAR_CSLAB_X <- tf$placeholder(tf$float32, shape(NULL, 1L))

vAR_CSLAB_Y = tf$placeholder(tf$float32, shape(NULL, 2L), name = "Y")

vAR_CSLAB_W = tf$Variable(tf$random_normal(shape(1L,2L),stddev = 1.0), name = "weghts")

vAR_CSLAB_b = tf$Variable(tf$zeros(shape(2L)), name = "bias")

vAR_CSLAB_logits = tf$add(tf$matmul(vAR_CSLAB_X, vAR_CSLAB_W), vAR_CSLAB_b)

vAR_CSLAB_pred = tf$nn$sigmoid(vAR_CSLAB_logits)

vAR_CSLAB_entropy = tf$nn$sigmoid_cross_entropy_with_logits(labels = vAR_CSLAB_Y, logits = vAR_CSLAB_logits)

vAR_CSLAB_loss = tf$reduce_mean(vAR_CSLAB_entropy)

vAR_CSLAB_optimizer = tf$train$GradientDescentOptimizer(learning_rate = 0.01)$minimize(vAR_CSLAB_loss)

vAR_CSLAB_init_op = tf$global_variables_initializer()

vAR_CSLAB_correct_prediction <- tf$equal(tf$argmax(vAR_CSLAB_pred, 1L), tf$argmax(vAR_CSLAB_Y, 1L))

vAR_CSLAB_accuracy <- tf$reduce_mean(tf$cast(vAR_CSLAB_correct_prediction, tf$float32))

vAR_CSLAB_sess = tf$Session()

vAR_CSLAB_sess$run(vAR_CSLAB_init_op)

with(tf$Session() %as% sess, {
    
  sess$run(init_op)
    
  for (i in 1:1000) {
      
    sess$run(optimizer,feed_dict = dict(X=vAR_CSLAB_x_train, Y=vAR_CSLAB_y_train))
  }
    
  sess$run(accuracy, feed_dict=dict(X = vAR_CSLAB_x_test, Y = vAR_CSLAB_y_test))
    
})

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
