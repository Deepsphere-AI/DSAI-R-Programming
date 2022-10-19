
/*******************************************************************************************

File Name       :   CSLAB_DEEP_LEARNING_BINARY_CLASSIFICATION_V1
Purpose 	:   A Program for Binary Classification in R
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
 	
## Program Description : A Program for Binary Classification in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library(keras)

vAR_CSLAB_imdb <- dataset_imdb(num_words = 10000)

c(c(vAR_CSLAB_train_data, vAR_CSLAB_train_labels), c(vAR_CSLAB_test_data, vAR_CSLAB_test_labels)) %<-% vAR_CSLAB_imdb

vAR_CSLAB_word_index <- dataset_imdb_word_index()

# We reverse it, mapping integer indices to words
vAR_CSLAB_reverse_word_index <- names(vAR_CSLAB_word_index)

names(vAR_CSLAB_reverse_word_index) <- vAR_CSLAB_word_index

# We decode the review; note that our indices were offset by 3
# because 0, 1 and 2 are reserved indices for "padding", "start of sequence", and "unknown".
vAR_CSLAB_decoded_review <- sapply(vAR_CSLAB_train_data[[1]], function(index) {
    
  vAR_CSLAB_word <- if (index >= 3) vAR_CSLAB_reverse_word_index[[as.character(index - 3)]]
    
  if (!is.null(vAR_CSLAB_word)) vAR_CSLAB_word else "?"
      
})

vAR_CSLAB_vectorize_sequences <- function(sequences, dimension = 10000) {
    
  # Create an all-zero matrix of shape (len(sequences), dimension)
    
  vAR_CSLAB_results <- matrix(0, nrow = length(sequences), ncol = dimension)
    
  for (i in 1:length(sequences))
      
    # Sets specific indices of results[i] to 1s
      
    vAR_CSLAB_results[i, sequences[[i]]] <- 1
    
  vAR_CSLAB_results
    
}

# Our vectorized training data
vAR_CSLAB_x_train <- vAR_CSLAB_train_data

# Our vectorized test data
vAR_CSLAB_x_test <- vAR_CSLAB_test_data

# Our vectorized labels
vAR_CSLAB_y_train <- as.numeric(vAR_CSLAB_train_labels)

vAR_CSLAB_y_test <- as.numeric(vAR_CSLAB_test_labels)

library(keras)

vAR_CSLAB_model <- keras_model_sequential() %>% 
  layer_dense(units = 16, activation = "relu", input_shape = c(10000)) %>% 
  layer_dense(units = 16, activation = "relu") %>% 
  layer_dense(units = 1, activation = "sigmoid")

vAR_CSLAB_model %>% compile(
  optimizer = "rmsprop",
  loss = "binary_crossentropy",
  metrics = c("accuracy")
)

#vAR_CSLAB_model %>% fit(vAR_CSLAB_x_train, vAR_CSLAB_y_train, epochs = 4, batch_size = 512)

#vAR_CSLAB_results <- model %>% evaluate(vAR_CSLAB_x_test, vAR_CSLAB_y_test)

#vAR_CSLAB_results

#vAR_CSLAB_model %>% predict(vAR_CSLAB_x_test[1:10,])

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
