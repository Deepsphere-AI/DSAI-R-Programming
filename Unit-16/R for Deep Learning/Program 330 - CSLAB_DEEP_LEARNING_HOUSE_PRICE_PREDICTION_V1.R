
/*******************************************************************************************

File Name       :   CSLAB_DEEP_LEARNING_HOUSE_PRICE_PREDICTION_V1
Purpose 	:   A Program for House Price Prediction in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   24/01/2019 15:45 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				24/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
 	
## Program Description : A Program for House Price Prediction in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter
library(keras)

vAR_CSLAB_Dataset <- dataset_boston_housing()

c(c(vAR_CSLAB_train_data, vAR_CSLAB_train_targets), c(vAR_CSLAB_test_data, vAR_CSLAB_test_targets)) %<-% vAR_CSLAB_Dataset

vAR_CSLAB_mean <- apply(vAR_CSLAB_train_data, 2, mean)

vAR_CSLAB_std <- apply(vAR_CSLAB_train_data, 2, sd)

vAR_CSLAB_train_data <- scale(vAR_CSLAB_train_data)

vAR_CSLAB_test_data <- scale(vAR_CSLAB_test_data)

vAR_CSLAB_build_model <- function() {
    
  vAR_CSLAB_model <- keras_model_sequential() %>% 
    
    layer_dense(units = 64, activation = "relu", 
                input_shape = dim(train_data)[[2]]) %>% 
    layer_dense(units = 64, activation = "relu") %>% 
    layer_dense(units = 1) 
    
  vAR_CSLAB_model %>% compile(
      
    optimizer = "rmsprop", 
    loss = "mse", 
    metrics = c("mae")
      
  )

}

k <- 4

vAR_CSLAB_indices <- sample(1:nrow(vAR_CSLAB_train_data))

vAR_CSLAB_folds <- cut(1:length(vAR_CSLAB_indices), breaks = k, labels = FALSE) 

vAR_CSLAB_num_epochs <- 100

vAR_CSLAB_all_scores <- c()

for (i in 1:k) {
    
cat("processing fold #", i, "\n")
    
# Prepare the validation data: data from partition # k
    
vAR_CSLAB_val_indices <- which(vAR_CSLAB_folds == i, arr.ind = TRUE) 
    
vAR_CSLAB_val_data <- vAR_CSLAB_train_data[vAR_CSLAB_val_indices,]
    
vAR_CSLAB_val_targets <- vAR_CSLAB_train_targets[vAR_CSLAB_val_indices]

# Prepare the training data: data from all other partitions
vAR_CSLAB_partial_train_data <- vAR_CSLAB_train_data[-vAR_CSLAB_val_indices,]
    
vAR_CSLAB_partial_train_targets <- vAR_CSLAB_train_targets[-vAR_CSLAB_val_indices]
  
# Build the Keras model (already compiled)
vAR_CSLAB_model <- vAR_CSLAB_build_model()
  
# Train the model (in silent mode, verbose=0)
vAR_CSLAB_model %>% fit(vAR_CSLAB_partial_train_data, vAR_CSLAB_partial_train_targets,
                epochs = vAR_CSLAB_num_epochs, batch_size = 1, verbose = 0)
                
# Evaluate the model on the validation data
vAR_CSLAB_results <- vAR_CSLAB_model %>% evaluate(vAR_CSLAB_val_data, vAR_CSLAB_val_targets, verbose = 0)
    
vAR_CSLAB_all_scores <- c(vAR_CSLAB_all_scores, vAR_CSLAB_results$mean_absolute_error)    
    
}    

vAR_CSLAB_num_epochs <- 500

vAR_CSLAB_all_mae_histories <- NULL

for (i in 1:k) {
  cat("processing fold #", i, "\n")
  
# Prepare the validation data: data from partition # k
    
vAR_CSLAB_val_indices <- which(folds == i, arr.ind = TRUE)
    
vAR_CSLAB_val_data <- vAR_CSLAB_train_data[vAR_CSLAB_val_indices,]
    
vAR_CSLAB_val_targets <- vAR_CSLAB_train_targets[vAR_CSLAB_val_indices]
  
# Prepare the training data: data from all other partitions
vAR_CSLAB_partial_train_data <- vAR_CSLAB_train_data[-vAR_CSLAB_val_indices,]

vAR_CSLAB_partial_train_targets <- vAR_CSLAB_train_targets[-vAR_CSLAB_val_indices]
  
# Build the Keras model (already compiled)
vAR_CSLAB_model <- vAR_CSLAB_build_model()
  
# Train the model (in silent mode, verbose=0)
vAR_CSLAB_history <- vAR_CSLAB_model %>% fit(
    
    vAR_CSLAB_partial_train_data, vAR_CSLAB_partial_train_targets,
    
    vAR_CSLAB_validation_data = list(vAR_CSLAB_val_data, vAR_CSLAB_val_targets),
    
    epochs = vAR_CSLAB_num_epochs, batch_size = 1, verbose = 0
  )
    
  vAR_CSLAB_mae_history <- vAR_CSLAB_history$metrics$val_mean_absolute_error
    
  vAR_CSLAB_all_mae_histories <- rbind(vAR_CSLAB_all_mae_histories, vAR_CSLAB_mae_history)
    
}

vAR_CSLAB_average_mae_history <- data.frame(
    
  vAR_CSLAB_epoch = seq(1:ncol(vAR_CSLAB_all_mae_histories)),
    
  vAR_CSLAB_validation_mae = apply(vAR_CSLAB_all_mae_histories, 2, mean)
    
)

library(ggplot2)

ggplot(vAR_CSLAB_average_mae_history, aes(x = vAR_CSLAB_epoch, y = vAR_CSLAB_validation_mae)) + geom_line()

 

/*******************************************************************************************
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on 	their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************
