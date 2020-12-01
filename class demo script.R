##################################
# Virginie Galais
# Introduction to R Rscript
##################################

# clear data
rm(list = ls())

#set the directory
setwd()
getwd() # to know in which directory we are
      
##################################
#### Getting Help and Support ####
##################################
# command for suport facilities
help()
?
  #help(function) is the same as ?function
help.search()
??
  #help.search("function") is the same as ??function
help.start()

#-------------------------------------------------------------#
#----------------------- Operators in R ----------------------#
#-------------------------------------------------------------#

############################
### Assignment Operators ###
############################
x <- 2
x
24 -> z #same as above
y=26    #same as above

vec1  <- 3:6 #assign a sequence of value
vec11 <- c(3,4,5,6) #same as above, but allow to select the values we want (not necessary a sequence)
vec2  <- 12:15
############################
### Arithmetic Operators ###
############################

3 + 5
18 - 7
9 * 2
24/8
6^2

a <- 9
b <- 3

a + b
a - b
a * b
calc1  <- (a + b)/(a - b)
calc1
calc2  <- (a + b)^b/(a * b)
calc2

#if vectors does not have the same lenght
u <- c(6,9,2)
v <- c(2,3,-1)
w <- c(2,1)

u+w
u-v

#Matrix
matA <-   matrix(c(5,2, 4,3), nrow = 2, ncol = 2)
matA
matB  <-   matrix(c(1,6, 1,-1), nrow = 2, ncol = 2,byrow = TRUE)
matB
matC  <-   matA + matB
matC
matD  <-   matA - matB
matD
  # For matrix multiplication, the command%*%is used
  # using*performs element-wisemultiplication
matE  <-   matA * matB
matE
matF  <-   matA %*% matB
matF

############################
### Relational Operators ###
############################
#Relational operators are used to establish the relation between two objects
4 > 5
4 < 5
4 > 4
4 < 4
4  >= 4
4  <= 4

#eg
x <- 3
y <- 6

y == x + 3
y != x + 3 #!= means not equal to
x != y - x

  #same is possible with matrix
matA != matB
matA  >= matC
matE == matF
matE  <= matC

#########################
### Logical Operators ###
#########################
#Three logical operators 
#OR "|"
#AND "&"
#NOT "!"

stateP  <- TRUE
stateD  <- FALSE

#The AND operator returns TRUE only if all statements are true
# otherwise FALSE is returned
stateP & stateP
stateP & stateD
stateD & stateD

#The OR operator returns TRUE if at least one of the statement is true
#the OR operator only returns FALSE if all statements are false
stateP | stateP
stateP | stateD
stateD | stateD

#The NOT operation returns a negation or the reverse of a statement
! stateP
! stateD
stateD | ! stateD


#######################
### Other Operators ###
#######################
#The : operator creates a vector of numbers in a sequence form
vec1  <- 2:8
vec2  <- 20:16
vec3  <- c(1:5, 20:16,  2:8)

#The ; operator is used to combine or run multiple commands at the same time
a <- 3 ;   b <- 5 ;   c <- 3
a ; b ; c
# Instead of using: 
Q1 <- a + b
Q1
Q1 <- a + b ; Q1 # combination of the two commands above (same as the %>%)
# Instead of using:
Q2 <- (a + b)*(a - b)
Q2
Q2 <- (a + b)*(a - b) ; Q2 # combination of the two commands above

Q1 <- a + b ; Q2 <- (a + b)*(a - b) ; Q1 ; Q2
Q2 <- (a + b)*(a - b)    Q2 #without the operator = error message !

#The %in% operator is used to verify if an object belongs to a vector
vecA  <- c(1:5,  7:9) ; vecA
3%in% vecA #translation: is 3 part of vector A?
6%in% vecA
3:5%in% vecA #translation: is 3,4,5 part of vector A?
5:8%in% vecA

#-------------------------------------------------------------#
#------------------------ Types of Data ----------------------#
#-------------------------------------------------------------#

#######################
####### Vectors #######
#######################
# Data  structure  that  contains  element  of  the  same  type
  # logical (eg.TRUE, FALSE)
  # integer (eg.2,4,5)
  # numeric (eg.1,1.5,2.7)
  # character(eg."a", "dog", "cat")
  # complex (eq.4+3i)
# 4 ways to create a vector : c(), :, seq(), rep()
v1 <- c(1,2,4,8) ; v1
v2 <- c("blood","urine") ; v2 #don't forget to put the "" when it is text
vSeq1  <- seq(2,4, by = 0.5) ; vSeq1 # to create a vector with elements in sequential order
vSeq2  <- seq(10,30, by = 5) ; vSeq2
vRep1  <-   rep(1:3, 2) ; vRep1 # to create a vector with repeated elements
vRep2  <- rep(1:3,  each = 2) ; vRep2 # same numbers, order different from the command above
vRep3   <-   rep(1:3,  each = 2, times = 3)   ; vRep3 #times is the number of repetition we want 

# Accessing Elements of a Vector
measurements  <- c(2, 5, 7, 16, 20, 22) ; measurements
measurements [3] #To  select  the  third  element in the vector
measurements [3:5] #To  select  the third , fourth  and  five element in the vector
measurements[c(1,4,6)] #To  select  the first , fourth  and  sixth element in the vector

actors  <- c("lawyers", "prosecution", "defence") ; actors
actors [1:2]
