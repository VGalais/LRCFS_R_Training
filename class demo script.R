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
vRep1  <- rep(1:3, 2) ; vRep1 # to create a vector with repeated elements
vRep2  <- rep(1:3,  each = 2) ; vRep2 # same numbers, order different from the command above
vRep3  <- rep(1:3,  each = 2, times = 3)   ; vRep3 #times is the number of repetition we want 

# Accessing Elements of a Vector
measurements  <- c(2, 5, 7, 16, 20, 22) ; measurements
measurements[3] #To  select  the  third  element in the vector

measurements[3:5] #To  select  the third , fourth  and  five element in the vector
measurements[c(1,4,6)] #To  select  the first , fourth  and  sixth element in the vector

actors  <- c("lawyers", "prosecution", "defence") ; actors #with characters
actors[1:2]

# Modifying Elements of a Vector
    # new name <- old name
readings  <- measurements # to create a copy or rename a vector
readings
stakeholders  <- actors
stakeholders

    # creating copies
measurementsOD  <- measurements
measurementsOD
actorsOD  <- actors
actorsOD

    # Replacing Elements of a Vector
    # name[position number] <- new value
measurements[3]  <- 10 ; measurements
actors[1]  <- "judges" ; actors
measurements1  <- measurements ; measurements1
measurements1 [3]  <- 10 ; measurements1

    # Adding Elements to a Vector
measurements  <- measurementsOD ; measurements
measurements  <- c(measurements ,30,25) ; measurements # name <- c(old name, new value)
measurements  <- measurementsOD ; measurements #Reset to  initial  values
c(measurements ,30,25) # keep the elements of the old vector unchange
measurements
measurements  <- c(measurements ,30 ,38 ,45) ; measurements

measurements  <- measurementsOD ; measurements #Reset to  initial  values
measurements [7]  <- 30 ; measurements # using position instead
measurements [10]  <-30 ; measurements
measurements[c(10 ,12)]  <- 45 ; measurements #Tenth  and  twelfth  position
measurements[c(10 ,12)]  <- c(45,20) ; measurements #Tenth  and  twelfth  position
#45 at the twelfth position is replaced with 20

    # Deleting Elements of a Vector
    # name[- position number]
measurements  <- measurementsOD ; measurements #Reset to  initial  values
measurements[-2] #remove the 5
measurements #unchanged
measurements  <- measurements [-2] ; measurements #to change the original vector

measurements  <- measurementsOD ; measurements #Reset to  initial  values
measurements[-c(4,6)] ; measurements #to remove the 16 and the 22
measurements #unchanged
measurements  <- measurements[-c(4,6)] ; measurements #Changed

actors
actors  <- actors [-1] ; actors

########################
####### Matrices #######
########################
    # Creating a matrix with matrix()
mat1a  <- matrix(c(1,2,3,11,12,13),  nrow = 2) ; mat1a
mat1b  <- matrix(c(1,2,3,11,12,13),  nrow = 2, ncol = 3) ; mat1b #same as above
mat1c  <- matrix(c(1,2,3,11,12,13),  nrow = 2, ncol = 2) ; mat1c #Only  the  first  four  elements  are  selected
mat2  <- matrix(c(1,2,3,11,12,13),  nrow = 2, ncol = 3, byrow = TRUE) ; mat2 #add the last 2 values

    # Accessing Elements of a Matrix
    # matrix name[row number, column number]
mat1b [2,2]
mat2 [2,2]

mLetters  <- matrix(LETTERS [1:9],  nrow = 3) ; mLetters
mLetters[3, ] #select last row
mLetters[  ,3] #select last column
mLetters [3,2] #select value in row 3 and column 2
mLetters[3,c(2:3)] #select in row 3 the second and the third value

    # Modifying Elements of a Matrix
    # Making a Copy or Renaming a Matrix
mLettersOD  <- mLetters ; mLettersOD
mLetters # Both mLettersOD andmLetters are stored in the memory
    #Replacing Elements of a Matrix: name[row number, column number] <- new value
mLetters[1, ] <- c("A1", "D1", "G1") ; mLetters #replace A, D and G by A1, D1 and G1
mLetters[3,2:3 ] <- c("V", "W") ; mLetters #replace row 3 the second and the third value (F,I) by V and W

    # Adding Elements to a Matrix
rbind(mLetters ,c("X","Y","Z")) #add a row with X,Y and Z
cbind(mLetters ,c("X","Y","Z")) #add a column with X,Y and Z
mLetters  <- cbind(mLetters ,c("X","Y","Z")) ; mLetters #to save the results

    # Deleting Elements of a Matrix
mLetters  <- mLettersOD ;mLetters #to reset
mLetters[-1, ] #remove the first row of the matrix
mLetters [,-3] #remove the third column of the matrix
mLetters [-1,-2] #remove the first row and second columns of the matrix

########################
#######   List   #######
########################
myVec  <- 8:12 ; myVec # creating a vector
myMat  <- matrix(c(1,0,-1, 1,1,-1), nrow = 2) ;   myMat #creating a matrix
myDat  <- data.frame(course = c("Maths","Science","English"),grade = c(50 ,60 ,85)) #creating a dataframe
myDat

myListDoc  <- list(myVec , myMat , myDat) #To create a list containing myVec, myMat and myDat 
myListDoc

    # Accessing Components of a List
myListDoc [1] # Select  the   first  component, myVec
myListDoc[c(2,3)] # Select  the  second  and  third  component (myMat and myDat)

    # Accessing Elements with a Component of a List
    # name[[component number]]
myListDoc [[3]][1] #select first row of myDat
myListDoc [[1]][1] #select first element of myVec
myListDoc [[2]][,1] #select first column of myMat
myListDoc [[3]][  ,2] #select second column of myDat
myListDoc [[3]][2 ,2] #select the value in the second row and second column of myDat


########################
###### Data Frame ######
########################
# clear data
rm(list = ls())

    # Creating a Data Frame
statusDat  <-   data.frame(edu = c("Uni","AL","6F"),inc = c("£60k","£35k","£25k"))
statusDat

edu <- c("Uni","AL","6F")
inc <- c("£60k","£35k","£25k")
statusDat <- data.frame(edu,inc);statusDat

Grade  <- sample (50:100 ,5) ; Grade
Course  <- c("Maths","En","Sci","Geo","Agr");  Course
Group  <- c(rep("A" ,3),rep("B" ,2)) ; Group
schDat  <- data.frame(Course , Group ,Grade)
schDat

    # Accessing Elements of a Data Frame
schDat[2]
schDat$Group

statusDat[1,2] #select one element
statusDat[3,1]

    # Modifying Elements of a Data Frame
    # Replacing Elements of a Data Frame
statusDat [1]  <- c("PHD", "MSc", "FD") ; statusDat
statusDat$inc  <- c("£62k", "£40k", "£33k") ; statusDat
    # Renaming Variable Names of a Data Frame
colnames(statusDat) <- c("Acc","Sal") #change name of the columns
statusDat
names(statusDat) <- c("AccLevel","SalScale") #same as above
statusDat
colnames(statusDat )[2] <- c("IncScale") #To change individual variable names
statusDat

    # Adding Elements to a Data Frame
name  <- c("Isaac", "Jenny","Ben","Mark","Kath")
schDat [4]  <- name ; schDat
schDat$name  <- c("Isaac", "Jenny","Ben","Mark","Kath") #same as above, quicker
schDat
#To change the variable V4 to "First Name" 
names(schDat )[4] <-"First Name" ; schDat

    # Deleting Elements of a Data Frame
schDat[-4] ; schDat
schDat$Course <-NULL #same as above
schDat

#-------------------------------------------------------------#
#---------------------- Creating Functions -------------------#
#-------------------------------------------------------------#
myVec  <- 8:12 ; myVec # creating a vector
mean(myVec)
sd(myVec)

# We can create a function to calculate the mean
# (if R does not have the function created already)
myMean  <- function(x){
  m <- sum(x)/length(x)
  return(m)}
myMean(myVec)

x<- c(1,3,5); y <- c(4,6,2)
myMean(x)
myMean(Y)

myCalc  <- function(a, b){
  u <- (a+b)/(a-b)
  v <- a^2 - b^2 + myMean(a)
  w <- u*v*(a+b)
  return(w)} #return which output we want
myCalc(4 ,5)

z <- c(5,7)
k <- c(4,1)
myCalc(z,k)