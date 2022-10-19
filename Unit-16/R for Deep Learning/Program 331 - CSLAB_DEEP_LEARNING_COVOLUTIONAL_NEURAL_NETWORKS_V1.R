
/*******************************************************************************************

File Name       :   CSLAB_DEEP_LEARNING_COVOLUTIONAL_NEURAL_NETWORKS_V1
Purpose 	:   A Program for Convolutional Neural Networks in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   24/01/2019 16:32 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				24/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Convolutional Neural Networks in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(keras)

vAR_CSLAB_model <- keras_model_sequential() %>% 

layer_conv_2d(filters = 32, kernel_size = c(3, 3), activation = "relu", input_shape = c(28, 28, 1)) %>% 
  
layer_max_pooling_2d(pool_size = c(2, 2)) %>% 

layer_conv_2d(filters = 64, kernel_size = c(3, 3), activation = "relu") %>% 

layer_max_pooling_2d(pool_size = c(2, 2)) %>% 

layer_conv_2d(filters = 64, kernel_size = c(3, 3), activation = "relu")

summary(vAR_CSLAB_model)

vAR_CSLAB_model <- vAR_CSLAB_model %>% 
  
layer_flatten() %>% 
  
layer_dense(units = 64, activation = "relu") %>% 

layer_dense(units = 10, activation = "softmax")

vAR_CSLAB_mnist <- dataset_mnist()

c(c(vAR_CSLAB_train_images, vAR_CSLAB_train_labels), c(vAR_CSLAB_test_images, vAR_CSLAB_test_labels)) %<-% vAR_CSLAB_mnist

vAR_CSLAB_train_images <- array_reshape(vAR_CSLAB_train_images, c(60000, 28, 28, 1))

vAR_CSLAB_train_images <- vAR_CSLAB_train_images / 255

vAR_CSLAB_test_images <- array_reshape(vAR_CSLAB_test_images, c(10000, 28, 28, 1))

vAR_CSLAB_test_images <- vAR_CSLAB_test_images / 255

vAR_CSLAB_train_labels <- to_categorical(vAR_CSLAB_train_labels)

vAR_CSLAB_test_labels <- to_categorical(vAR_CSLAB_test_labels)

vAR_CSLAB_model %>% compile(optimizer = "rmsprop", loss = "categorical_crossentropy", metrics = c("accuracy")
)
              
vAR_CSLAB_model %>% fit(
  vAR_CSLAB_train_images, vAR_CSLAB_train_labels, 
  epochs = 5, batch_size=64
)

vAR_CSLAB_results <- vAR_CSLAB_model %>% evaluate(vAR_CSLAB_test_images, vAR_CSLAB_test_labels)

vAR_CSLAB_results

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
