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
