
/**************************************************************************************
  
  File Name 	:   vAR_CSLAB_REVENUE_PREDICTION
  Purpose 	:   A Program for Revenue Prediction in R
  Author	:   Durga Prasad
  Reviewer 	:   Jothi Periasamy
  Date and Time	:   16/01/2019 10:50 hrs
  Version	:   1.0	
  Change History: 
_________________________________________________________________________________

   Who				   When 			        Why
_________________________________________________________________________________


    DP				16/01/2019		  Initital Release 

_________________________________________________________________________________


/**************************************************************************************

## Program Description : A Program for Revenue Prediction in R  

## R Development Environment & Runtime - R Studio, Anaconda, Jupyter

library("plotrix")  # Package for Various Plotting Functions

library("RODBC")    # Package for ODBC Data Access

library(ggplot2)    # Package for Graphical Plot

library(MASS)

set.seed(1234567890)

library("neuralnet") # Package for Training Nueral Networks

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "PROFIT_LOSS.txt"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_PROFIT_LOSS<- read.table(vAR_CSLAB_FILE_PATH, header=TRUE, sep="\t")

vAR_CSLAB_PROFIT_LOSS

plot(vAR_CSLAB_PROFIT_LOSS$Sales,type="b",lwd=2,

     xaxt="n",ylim=c(0,20000),col="black",
     xlab="Year",ylab="Amount",
     main="Profit & Loss Analysis")

axis(1,at=1:length(vAR_CSLAB_PROFIT_LOSS$Sales),labels=vAR_CSLAB_PROFIT_LOSS$Sales)  # Line Plot of Payroll Cost of Workforce
     lines(vAR_CSLAB_PROFIT_LOSS$Operating_Expenses,col="red",type="b",lwd=2)
     lines(vAR_CSLAB_PROFIT_LOSS$Operating_Income,col="orange",type="b",lwd=2)
     lines(vAR_CSLAB_PROFIT_LOSS$Net_Income,col="blue",type="b",lwd=2)    
     legend("topright",legend=c("Sales","Operating Expenses","Operating Income","Net Income"),
            lty=1,lwd=2,pch=21,col=c("black","red","orange","purple"),
            ncol=2,bty="n",cex=0.8,
            text.col=c("black","red","orange","purple"),
            inset=0.01)          

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Profitability.txt"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_PROFITABILTY<- read.table(vAR_CSLAB_FILE_PATH, header=TRUE, sep="\t")

vAR_CSLAB_PROFITABILTY

vAR_CSLAB_PLOT_PROFITABILTY <- c(vAR_CSLAB_PROFITABILTY$Profit_Margin)

pie3D(vAR_CSLAB_PLOT_PROFITABILTY, main="Profit Margin % Over the Period of 12 Months", explode=0.1, col=rainbow(length(vAR_CSLAB_PLOT_PROFITABILTY)),
      
      labels=c("Jan","Feb","Mar","Apr", "May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"))

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Cash_Flow.txt"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_CASH_FLOW<- read.table(vAR_CSLAB_FILE_PATH, header=TRUE, sep="\t")

vAR_CSLAB_CASH_FLOW

vAR_CSLAB_CASH_NET_CASH <- c(vAR_CSLAB_CASH_FLOW$Net_Cash)

vAR_CSLAB_CASH_ACCOUNTS <- c(vAR_CSLAB_CASH_FLOW$Accounts_Recievable)

vAR_CSLAB_CASH_NET <- cbind(vAR_CSLAB_CASH_NET_CASH,vAR_CSLAB_CASH_ACCOUNTS)
     
vAR_CSLAB_CASH_NET

barplot(vAR_CSLAB_CASH_FLOW$Net_Cash, vAR_CSLAB_CASH_FLOW$Accounts_Recievable, main="Cashflow Analysis", 
        xlab="Campaign Type", col=c("light green","green", "light blue" ))

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Balance_Sheet.txt"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_BALANCE_SHEET<- read.table(vAR_CSLAB_FILE_PATH, header=TRUE, sep="\t")

vAR_CSLAB_BALANCE_SHEET

library("neuralnet") # Package for Training Nueral Networks

vAR_CSLAB_ENV_VARIABLE_PATH = Sys.getenv("R_TUTORIAL_PATH")

vAR_CSLAB_FILE = "Revenue_Prediction.txt"

vAR_CSLAB_FILE_PATH = paste(vAR_CSLAB_ENV_VARIABLE_PATH,vAR_CSLAB_FILE,sep="")

vAR_CSLAB_REVENUE<- read.table(vAR_CSLAB_FILE_PATH, header=TRUE, sep="\t")

vAR_CSLAB_REVENUE

vAR_CSLAB_TRAINSET <- vAR_CSLAB_REVENUE[1:5, ]

vAR_CSLAB_TRAINSET   # Data Mining - Data Exploration

vAR_CSLAB_REVENUE_PRED <- neuralnet(Revenue_Dollar1 ~ Revenue_Dollar2, vAR_CSLAB_TRAINSET, hidden = 4, lifesign = "minimal", 
                                      linear.output = FALSE, threshold = 0.1)     

plot(vAR_CSLAB_REVENUE_PRED, rep = "best")   # Plotting of Nueral Network Graph.

vAR_CSLAB_RESULTS <- data.frame(actual = vAR_CSLAB_TRAINSET$Job_Satisfaction_2014, prediction = vAR_CSLAB_TRAINSET$Job_Satisfaction_2015)

vAR_CSLAB_RESULTS[1:5, ]  # Data Mining - Data Exploration of the Result Set


/**************************************************************************************
  Disclaimer.

We are providing this code block strictly for learning and researching, this is not a production ready code. We have no liability on this particular code under any circumstances; users should use this code on their own risk. 

All software, hardware and othr products that are referenced in these materials belong to the respective vendor who developed or who owns this product.

/**************************************************************************************