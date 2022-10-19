  
/*******************************************************************************************

File Name       :   CSLAB_NON_LINEAR_MODELS_V1
Purpose 	:   A Program for Non Linear Models in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 20:21 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				14/01/2019		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Non Linear Models in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

data(pressure)

str(pressure)

summary(pressure)

pressure$temperature = pressure$temperature + 273.15 

pressure$pressure = pressure$pressure * .1333

summary(pressure)

vAR_CSLAB_pres = pressure$pressure

vAR_CSLAB_temp = pressure$temperature

rm(pressure)

ls()

par(mfrow=c(1,4))                    # one row of four graphs

plot(vAR_CSLAB_pres ~ temp, main="Vapor Pressure\nof Mercury",

vAR_CSLAB_xlab="Temperature (degrees Kelvin)",

vAR_CSLAB_ylab="Pressure (kPascals)")

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

