
/*******************************************************************************************

File Name       :   CSLAB_DEEP_LEARNING_RECURRENT_NEURAL_NETWORKS_V1
Purpose 	:   A Program for Recurrent Neural Networks in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   24/01/2019 17:28 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				24/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for Recurrent Neural Networks in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

layer_simple_rnn(units = 32)

library(keras)

vAR_CSLAB_model <- keras_model_sequential() %>% 
  
layer_embedding(input_dim = 10000, output_dim = 32) %>% 

layer_simple_rnn(units = 32)

summary(vAR_CSLAB_model)

vAR_CSLAB_model <- keras_model_sequential() %>% 

layer_embedding(input_dim = 10000, output_dim = 32) %>% 

layer_simple_rnn(units = 32, return_sequences = TRUE)

summary(vAR_CSLAB_model)

vAR_CSLAB_model <- keras_model_sequential() %>% 

layer_embedding(input_dim = 10000, output_dim = 32) %>% 

layer_simple_rnn(units = 32, return_sequences = TRUE) %>% 

layer_simple_rnn(units = 32, return_sequences = TRUE) %>%

layer_simple_rnn(units = 32, return_sequences = TRUE) %>%

layer_simple_rnn(units = 32)  # This last layer only returns the last outputs.

summary(vAR_CSLAB_model)

library(keras)

vAR_CSLAB_max_features <- 10000  # Number of words to consider as features

vAR_CSLAB_maxlen <- 500  # Cuts off texts after this many words (among the max_features most common words)

vAR_CSLAB_batch_size <- 2

cat("Loading data...\n")

vAR_CSLAB_imdb <- dataset_imdb(num_words = vAR_CSLAB_max_features)

c(c(vAR_CSLAB_input_train, vAR_CSLAB_y_train), c(vAR_CSLAB_input_test, vAR_CSLAB_y_test)) %<-% vAR_CSLAB_imdb 

cat(length(vAR_CSLAB_input_train), "train sequences\n")

cat(length(vAR_CSLAB_input_test), "test sequences")

cat("Pad sequences (samples x time)\n")

vAR_CSLAB_input_train <- pad_sequences(vAR_CSLAB_input_train, maxlen = vAR_CSLAB_maxlen)

vAR_CSLAB_input_test <- pad_sequences(vAR_CSLAB_input_test, maxlen = vAR_CSLAB_maxlen)

cat("input_train shape:", dim(vAR_CSLAB_input_train), "\n")

cat("input_test shape:", dim(vAR_CSLAB_input_test), "\n")

vAR_CSLAB_model <- keras_model_sequential() %>%
  
layer_embedding(input_dim = vAR_CSLAB_max_features, output_dim = 32) %>%

layer_simple_rnn(units = 32) %>%

layer_dense(units = 1, activation = "sigmoid")

vAR_CSLAB_model %>% compile(optimizer = "rmsprop", loss = "binary_crossentropy", metrics = c("acc"))

vAR_CSLAB_history <- vAR_CSLAB_model %>% fit(vAR_CSLAB_input_train, vAR_CSLAB_y_train,epochs = 1,batch_size = 2,validation_split = 0.2

)

plot(vAR_CSLAB_history)

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
