
/*******************************************************************************************

File Name       :   CSLAB_DEEP_LEARNING_MULTICLASS_CLASSIFICATION_V1
Purpose 	:   A Program for Multiclass Classification in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   24/01/2019 15:03 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				24/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Multiclass Classification in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(keras)

vAR_CSLAB_reuters <- dataset_reuters(num_words = 10000)

c(c(vAR_CSLAB_train_data, vAR_CSLAB_train_labels), c(vAR_CSLAB_test_data, vAR_CSLAB_test_labels)) %<-% vAR_CSLAB_reuters

vAR_CSLAB_word_index <- dataset_reuters_word_index()

vAR_CSLAB_reverse_word_index <- names(vAR_CSLAB_word_index)

names(vAR_CSLAB_reverse_word_index) <- vAR_CSLAB_word_index

vAR_CSLAB_decoded_newswire <- sapply(vAR_CSLAB_train_data[[1]], function(index) {
    
  # Note that our indices were offset by 3 because 0, 1, and 2
  # are reserved indices for "padding", "start of sequence", and "unknown".
    
vAR_CSLAB_word <- if (index >= 3) vAR_CSLAB_reverse_word_index[[as.character(index - 3)]]
    
if (!is.null(vAR_CSLAB_word)) vAR_CSLAB_word else "?"
      
})

vAR_CSLAB_vectorize_sequences <- function(sequences, dimension = 10000) {
   
  vAR_CSLAB_results <- matrix(0, nrow = length(sequences), ncol = dimension)
    
  for (i in 1:length(sequences))
      
    vAR_CSLAB_results[i, sequences[[i]]] <- 1
    
  vAR_CSLAB_results
    
}

vAR_CSLAB_x_train <- vAR_CSLAB_vectorize_sequences(vAR_CSLAB_train_data)

vAR_CSLAB_x_test <- vAR_CSLAB_vectorize_sequences(vAR_CSLAB_test_data)

vAR_CSLAB_to_one_hot <- function(labels, dimension = 46) {
    
  vAR_CSLAB_results <- matrix(0, nrow = length(labels), ncol = dimension)
    
  for (i in 1:length(labels))
      
    vAR_CSLAB_results[i, labels[[i]] + 1] <- 1
    
  vAR_CSLAB_results
    
}

vAR_CSLAB_one_hot_train_labels <- vAR_CSLAB_to_one_hot(vAR_CSLAB_train_labels)

vAR_CSLAB_one_hot_test_labels <- vAR_CSLAB_to_one_hot(vAR_CSLAB_test_labels)

vAR_CSLAB_one_hot_train_labels <- to_categorical(vAR_CSLAB_train_labels)

vAR_CSLAB_one_hot_test_labels <- to_categorical(vAR_CSLAB_test_labels)

vAR_CSLAB_model <- keras_model_sequential() %>% 

  layer_dense(units = 64, activation = "relu", input_shape = c(10000)) %>% 

  layer_dense(units = 64, activation = "relu") %>% 

  layer_dense(units = 46, activation = "softmax")

vAR_CSLAB_model %>% compile(
    
  optimizer = "rmsprop",
    
  loss = "categorical_crossentropy",
    
  metrics = c("accuracy")
    
)

vAR_CSLAB_val_indices <- 1:1000

vAR_CSLAB_x_val <- vAR_CSLAB_x_train[vAR_CSLAB_val_indices,]

vAR_CSLAB_partial_x_train <- vAR_CSLAB_x_train[-vAR_CSLAB_val_indices,]

vAR_CSLAB_y_val <- vAR_CSLAB_one_hot_train_labels[vAR_CSLAB_val_indices,]

vAR_CSLAB_partial_y_train = vAR_CSLAB_one_hot_train_labels[-vAR_CSLAB_val_indices,]

vAR_CSLAB_history <- vAR_CSLAB_model %>% fit(

  vAR_CSLAB_partial_x_train,

  vAR_CSLAB_partial_y_train,

  epochs = 9,

  batch_size = 512,

  validation_data = list(vAR_CSLAB_x_val, vAR_CSLAB_y_val)

)

plot(vAR_CSLAB_history)

vAR_CSLAB_Predictions <- vAR_CSLAB_model %>% predict(vAR_CSLAB_x_test)

vAR_CSLAB_Predictions 

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
