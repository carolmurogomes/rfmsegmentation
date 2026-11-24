#R for Marketing Analysis- Dunnhumby Database
##Project 1: Kmeans RFM Clustering and Shiny Dashboard Version 1 construction
##Import and Cleaning

##Look for vector A on set up script and Load Packages

source("R/00_setup.R")  ###Here I ask to run again the setup code where vectors are defined
lapply(A,library,character.only=TRUE)
### With this code I run through the vectors(lapply) named A and load libraries written as string

##Import main data:transaction_data.csv 

trx <- read_csv("data/transaction_data.csv") ###Assigned to dataframe named trx, type tibble
### I choose to use the function from readr because transaction_data is a large arquive

##Inspection of main data

head(trx)  ### Shows first six lines of data as default 
str(trx)  ### Shows dataframe structure, types and value examples
summary(trx) ### Resumes statistic values for each column
colnames(trx) ### Shows column names
dim(trx) ### Returns the dimension of the dataframe counting the number of lines and columns

## Check for missing values and duplicated rows

colSums(is.na(trx)) ###Sums the number of nulls inside each column
sum(duplicated(trx)) ###Returns the sum of rows which are duplicated

##Looking for Primary Key to discover if its simple or combined

sum(duplicated(trx$household_key)) 
###There are duplicates because a household may generate many baskets
sum(duplicated(trx$BASKET_ID))
###There are duplicates because a basket may have many products
sum(duplicated(trx$PRODUCT_ID))
### There are duplicates because a product may be bought many times by many households

sum(duplicated(trx[c("household_key","BASKET_ID","PRODUCT_ID")])
### But each combination of Holsehold+Basket+Product is unique

##Transform columns to generate base for calculate the real Monetary Value on RFM step

### As SALES_VALUE correspond not for the value payed by the customer but received by retailer,
### prod_customer_spend must be calculated using SALES VALUE and Coupon DISC 
###Lets create trx_stage with a pipeline of code for next step of analysis
trx_stage <- trx %>% 
  mutate(prod_customer_spend=SALES_VALUE+COUPON_DISC) %>% 
  select(household_key,BASKET_ID,DAY,PRODUCT_ID,QUANTITY,prod_customer_spend,STORE_ID, TRANS_TIME,WEEK_NO)

###Let´s save the trx_stage
write_csv(trx_stage,"processed/trx_stage.csv")
file.info("processed/trx_stage.csv")$size / 1024^2

##
