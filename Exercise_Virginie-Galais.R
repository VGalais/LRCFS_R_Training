##################################
# Virginie Galais
# Introduction to R Rscript
#Exercise
##################################

# clear data
rm(list = ls())

    # First question
#Create a vector containing a sequence of numbers from 0 to 100, by 5
numS <- seq(0,100, by = 5) ; numS
#Select the last 10 elements ofnumS and call itnumSL10
numSF8 <- numS[1:8] ; numSF8
#Join vectorsnumSF8 andnumSL10 to form one vector callednumSF8L10
numSF8L10 <- c(numS,numSF8) ; numSF8L10

    # Second question
#Create a vector containing three repetitions of the number 2and 3,and two repetitions of the number 9 and 10
numRep1 <- rep(2:3,  each = 3, times = 1) ; numRep1
numRep2 <- rep(9:10,  each = 2, times = 1) ; numRep2
numRep <- c(numRep1,numRep2) ; numRep
#what is the length ofnumRep?  Trylength(numRep)
length(numRep)
#Replace the second, sixth and eight elements with 4, 5 and 7 respectivelyand rename the results asnumREdit
numRep[c(2, 6, 8)] <- c(4, 5, 7) ; numRep
numREdit <- numRep
#Add  numbers  12  to  16  to numREdit. What  is  the  new  length  ofnumREdit?
numREdit  <- c(numREdit ,12,16) ; numREdit
length(numREdit)
#Select  the  elements  in  the  ninth,  eleventh  and  thirteenth  position  ofnumREdit
numREdit[c(9,11,13)]

    # Third question
# Create a vector called evidence Evi containing blood splatter BS, hair H, glass fragments GF, paint P, gunshot residue GR and fiber F
Evi <- c("BS", "H", "GF", "P","GR","F") ; Evi
# Using Evi, create a 2×3 matrix calledEvi2
Evi2  <- matrix(Evi, nrow=2, ncol = 3) ; Evi2
# Select the second column of matrix Evi2
Evi2[,2]
# Create a 3×2 matrix called Evi3 using Evi
Evi3 <- matrix(Evi, nrow=3, ncol = 2) ; Evi3
# Select the second row of matrixEvi3
Evi3[2,]
# By rows, create a 3×2 matrix calledEvi3R usingEvi (not sure I understood)
Evi3R  <- matrix(Evi,  nrow = 3, ncol = 2, byrow = TRUE) ; Evi3R
#Is matrixEvi3 the same as matrixEvi3R ? No: in Evi3, the values are added in sequence by column and in Evi3R, values are added in sequence by row
#Join the rows of matrixEvi3 andEvi3R to form a 6×2
newmatrix <- rbind(Evi3, Evi3R) ; newmatrix
#Join the columns of matrixEvi3 andEvi3R to form a 3×4
newmatrixbis <- cbind(Evi3, Evi3R) ; newmatrixbis

    # Fourth question
#Create a vector RIsu containing the refractive index 2.8, 3.1, 1.9, 2.4 and 2.1 from a glass found on a suspect and a vector RIcs containing the refractiveindex 2.1,1.5, 3.2,2.4 and 2.9 from a glass found at a crime scene
RIsu <- c(2.8,3.1,1.9,2.4,2.1) ; RIsu
RIsu <- c(2.1,1.5,3.2,2.4,2.9) ; RIcs
# Row bind RIsu and RIcs
rbind(RIsu, RIsu)
# Column bind RIsu and RIcs
cbind(RIsu, RIsu)
# Create  a  data  frame with  its  columns  containingRIsuandRIcs
measRI <- data.frame(cbind(RIsu, RIsu)) ; measRI
# Add a third column calledID having numbers 1 to 5, to the data framemeasRI.  Term the new data frame asmRIID
ID <- c(1:5) ; ID
mRIID  <- data.frame(cbind(measRI, ID)) ; mRIID
# Select the third row of mRIID and replace RIsu and RIc swith 2.35 and 2.45 respectively
mRIID[3,1:2] <- c(2.35,2.45); mRIID

    # Fourth question
# From question 3, name the joint matrix created in 3g as evi62 and the jointmatrix in 3h as evi34
evi62 <- newmatrix
evi34 <- newmatrixbis
# Create a list called myList1 containing matrices evi62 and evi34
myList1 <- list(evi62,evi34) ; myList1
# Create a list called myList2 containing matrices Evi2,Evi3 and Evi3R
myList2 <- list(Evi2, Evi3, Evi3R) ; myList2
# Combine list myList1 andmyList2 to form a five component list called myListC12
myListC12 <- c(myList1, myList2) ; myListC12
# Create a data frame called Evi2v1 using matrix Evi2
Evi2v1 <- data.frame(Evi2) ; Evi2v1
# Add data Evi2v1 to the listmyListC12
myListC12[[6]] <- Evi2v1 ; myListC12
# Remove Evi2 from list myListC12
myListC12[3] <- NULL
# Rename components to show the names evi62,evi34,Evi3,Evi3R andEvi2v1 accordingly
names(myListC12)[1:5] <- c("evi62","evi34","Evi3","Evi3R","Evi2v1")

    # Fifth question
#Create  a  function  called mySumSqDev  that  computes  the  sum  of  squaresdeviation of a set of values
mySumSqDev  <- function(x){
  a <- sum((x - mean(x))^2)
  return(a)}
#Create a function called myVar that build on the function mySumSqDev to compute the variance of a set of values given by
myVar  <- function(x){
  a <- sum((x - mean(x))^2)
  b <- (length(x) - 1)
  c <- a/b
  return(c)}
#Furthermore, create a function called myStdDev that build on the function myVar to compute the standard deviation of a set of values 
myStdDev  <- function(x){
  a <- sqrt(myVar(x))
  return(a)}
#Using mySumSqDev  compute  the  sum  of  squares  deviation  for  x={4,6,2,8}
x <- c(4,6,2,8)
mySumSqDev(x)
#Using myVar, compute the variance of y ={2,1,3,7,5}
y <- c(2,1,3,7,5)
myVar(y)
# Using myStdDev, compute the standard deviation of z ={1,5,9}
z <- c(1,5,9)
myStdDev(z)
