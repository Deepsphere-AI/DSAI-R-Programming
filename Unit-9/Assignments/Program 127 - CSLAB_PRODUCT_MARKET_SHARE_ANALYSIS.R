
/*******************************************************************************************

File Name       :   CSLAB_PRODUCT_MARKET_SHARE_ANALYSIS
Purpose 	:   A Program for Product Market Share Analysis in R  
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 17:12 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				16/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************
    
## Program Description : A Program for Product Market Share Analysis in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter 

vAR_CSLAB_Year <- c(2011, 2012, 2013, 2014, 2015)

vAR_CSLAB_Potential_Customer_Market_Share_2015 <- c(80, 82, 87, 85, 90)

vAR_CSLAB_Influence_Customer_Market_Share_2015 <- c(77, 79, 75, 80, 82)

vAR_CSLAB_Sale_Customer_Market_Share_2015 <- c(81, 78, 83, 85, 84)

vAR_CSLAB_Rebate_Customer_Market_Share_2015 <- c(85, 83, 84, 82, 84)

vAR_CSLAB_sample1 <- data.frame(vAR_CSLAB_Year, vAR_CSLAB_Potential_Customer_Market_Share_2015, vAR_CSLAB_Influence_Customer_Market_Share_2015, 
        
vAR_CSLAB_Sale_Customer_Market_Share_2015, vAR_CSLAB_Rebate_Customer_Market_Share_2015)

plot(vAR_CSLAB_Potential_Customer_Market_Share_2015) 

plot(vAR_CSLAB_Influence_Customer_Market_Share_2015) 
     
plot(vAR_CSLAB_Sale_Customer_Market_Share_2015)

plot(vAR_CSLAB_Rebate_Customer_Market_Share_2015)

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************