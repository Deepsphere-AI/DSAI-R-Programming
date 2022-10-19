
/*******************************************************************************************

File Name       :   CSLAB_CATEGORY_VARIBLES_V1
Purpose 	:   A Program for Category Variables in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   14/01/2019 19:22 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				04/02/2015		  Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Category Variables in R

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter Notebook

vAR_CSLAB_hsb2 <- read.csv("https://stats.idre.ucla.edu/stat/data/hsb2.csv")

vAR_CSLAB_hsb2$race.f <- factor(vAR_CSLAB_hsb2$race)

is.factor(vAR_CSLAB_hsb2$race.f)

vAR_CSLAB_hsb2$race.f[1:15]

#summary(lm(write ~ race.f, data = hsb2))

#summary(lm(write ~ factor(race), data = hsb2))

vAR_CSLAB_hsb2 <- within(vAR_CSLAB_hsb2, {
    race.ct <- C(race.f, treatment)
    print(attributes(race.ct))
})

vAR_CSLAB_hsb2 <- within(vAR_CSLAB_hsb2, {
    race.ch <- C(race.f, helmert)
    print(attributes(race.ch))
})

vAR_CSLAB_hsb2 <- within(vAR_CSLAB_hsb2, {
    race.ch1 <- C(race.f, helmert, 3)
    print(attributes(race.ch1))
})

/*******************************************************************************************
  
Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and other products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************

