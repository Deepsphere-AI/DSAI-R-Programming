
/*******************************************************************************************

File Name       :   CSLAB_LATTICE_PLOT_V1
Purpose 	:   A Program for Lattice Plot in R
Author		:   Durga Prasad
Reviewer 	:   Jothi Periasamy
Date and Time	:   16/01/2019 01:11 hrs
Version		:   1.0	
Change History 	: 

____________________________________________________________________________________________

	Who				   When 			  Why
____________________________________________________________________________________________


	DP				16/01/2019		    Initital Release 

____________________________________________________________________________________________


/*******************************************************************************************

## Program Description : A Program for Lattice Plot in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

## data import from URL
vAR_CSLAB_gdURL <- "http://www.stat.ubc.ca/~jenny/notOcto/STAT545A/examples/gapminder/data/gapminderDataFiveYear.txt"

vAR_CSLAB_gDat <- read.delim(file = vAR_CSLAB_gdURL)

## drop Oceania
vAR_CSLAB_jDat <- droplevels(subset(vAR_CSLAB_gDat, continent != "Oceania"))
str(vAR_CSLAB_jDat)

install.packages("lattice")
library("lattice")

xyplot(lifeExp ~ gdpPercap, vAR_CSLAB_jDat)
xyplot(lifeExp ~ gdpPercap, vAR_CSLAB_jDat,grid = TRUE)

/*******************************************************************************************
  Disclaimer.

      We are providing this code block strictly for learning and researching, this is not a 
production ready code. We have no liability on this particular code under any circumstances; 
users should use this code on their own risk. All software, hardware and othr products that 
are referenced in these materials belong to the respective vendor who developed or who owns 
this product.

/*******************************************************************************************