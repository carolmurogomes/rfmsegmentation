#R for Marketing Analysis- Dunnhumby Database
##Project 1: Kmeans RFM Clustering and Shiny Dashboard Version 1 construction

#Check Installed Packages and Download necessary Packages 
installed.packages()
###Since its first time using R on my new PC, it's important to install the packages
### Building first the vectors for each analysis step then install 

##Import and Cleaning
A <- c("tidyverse", "janitor")

##Exploratory Analysis
B <- c("skimr") ### Also ggplot2 which is already within tidyverse 

##RFM Analysis
###Only use dplyr and lubridate, both already within tidyverse 

##Clustering and testing 
C <- c("cluster","factoextra")

##Interactive Dashboard Development
D <- c("shiny")

###Then, let's install the vectors all together
install.packages(c(A,B,C,D))

