
/*******************************************************************************************

File Name       :   CSLAB_DEEP_LEARNING_NEURAL_NETWORKS_V1
Purpose 	:   A Program for Neural Networks in R
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
 	
## Program Description : A Program for for Neural Networks in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(keras)

vAR_CSLAB_mnist <- dataset_mnist()

vAR_CSLAB_train_images <- vAR_CSLAB_mnist$train$x

vAR_CSLAB_train_labels <- vAR_CSLAB_mnist$train$y

vAR_CSLAB_test_images <- vAR_CSLAB_mnist$test$x

vAR_CSLAB_test_labels <- vAR_CSLAB_mnist$test$y

network <- keras_model_sequential() %>% 

layer_dense(units = 512, activation = "relu", input_shape = c(28 * 28)) %>% 

layer_dense(units = 10, activation = "softmax")

network %>% compile(optimizer = "rmsprop", loss = "categorical_crossentropy", metrics = c("accuracy"))

vAR_CSLAB_train_images <- array_reshape(vAR_CSLAB_train_images, c(60000, 28 * 28))

vAR_CSLAB_train_images <- vAR_CSLAB_train_images / 255

vAR_CSLAB_test_images <- array_reshape(vAR_CSLAB_test_images, c(10000, 28 * 28))

vAR_CSLAB_test_images <- vAR_CSLAB_test_images / 255

vAR_CSLAB_train_labels <- to_categorical(vAR_CSLAB_train_labels)

vAR_CSLAB_test_labels <- to_categorical(vAR_CSLAB_test_labels)

network %>% fit(vAR_CSLAB_train_images, vAR_CSLAB_train_labels, epochs = 5, batch_size = 128)

vAR_CSLAB_metrics <- network %>% evaluate(vAR_CSLAB_test_images, vAR_CSLAB_test_labels, verbose = 0)

vAR_CSLAB_metrics

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
