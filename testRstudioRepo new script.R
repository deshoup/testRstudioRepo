################################################################
#create a mock data set
  set.seed(25) #sets the starting random number so we all get the same values from the random number generator
  control <- rnorm(n=9,mean=78,sd=15) #Create a random normal distibuted data set
  redBull <- rnorm(n=9,mean=72,sd=10)
  ginko <- rnorm(n=9,mean=79,sd=20)
  studentData <- data.frame(cbind(control, redBull, ginko))
  
  #need to reshape data so there is a column that identifies the group and then a column that has the measured value
  library(tidyr)
  studentDataTall <- gather(studentData, key="groupName", value="testScore", control, redBull, ginko)#Key=name for group column, value=name for response

  #add second factor (sex)
  studentDataTall$sex <- "male"
  control <- rnorm(n=9,mean=78,sd=10) #Create a random normal distibuted data set
  redBull <- rnorm(n=9,mean=72,sd=10)
  ginko <- rnorm(n=9,mean=82,sd=10)
  studentData <- data.frame(cbind(control, redBull, ginko))
  studentDataTallFemale <- gather(studentData, key="groupName", value="testScore", control, redBull, ginko)
  studentDataTallFemale$sex <- "female"
  studentDataTall <- rbind(studentDataTall,studentDataTallFemale)
  studentDataTall$groupName <- as.factor(studentDataTall$groupName) 
   Student2Cat <- subset(studentDataAll, groupName=="control" | groupName=="redBull")
  iQ <- rnorm(n=54, mean=123, sd=18)
  iQ <- iQ[order(iQ)]
  studentDataAll <- studentDataTall[order(studentDataTall$testScore),]
  studentDataAll$iQ <-iQ
  studentDataAll <- studentDataAll[order(studentDataAll$groupName,studentDataTall$sex),]#don't forget comma before ] 
  write.csv(Student2Cat, "C:/Users/Dan/Documents/Teaching/Samplg and Modlng Pops/Intro stats R code/Student2Cat.csv", row.names=FALSE)
  write.csv(studentDataAll, "C:/Users/Dan/Documents/Teaching/Samplg and Modlng Pops/Intro stats R code/studentDataAll.csv", row.names=FALSE)

  
  #make BMP data set (first data set made by hand in Excel had major residual issues)
  Pre_OK_trt <- data.frame("id"=1:5, "treat"="treat","time"="pre","state"="OK","score"=rnorm(n=5,mean=42,sd=4))
  Pre_OK_ctr <- data.frame("id"=6:10, "treat"="control","time"="pre","state"="OK","score"=rnorm(n=5,mean=44,sd=4))
  Post_OK_trt <- data.frame("id"=1:5, "treat"="treat","time"="post","state"="OK","score"=rnorm(n=5,mean=58,sd=4))
  Post_OK_ctr <- data.frame("id"=6:10, "treat"="control","time"="post","state"="OK","score"=rnorm(n=5,mean=45,sd=4))
  Pre_IA_trt <- data.frame("id"=11:15, "treat"="treat","time"="pre","state"="IA","score"=rnorm(n=5,mean=46,sd=4))
  Pre_IA_ctr <- data.frame("id"=16:20, "treat"="control","time"="pre","state"="IA","score"=rnorm(n=5,mean=48,sd=4))
  Post_IA_trt <- data.frame("id"=11:15, "treat"="treat","time"="post","state"="IA","score"=rnorm(n=5,mean=66,sd=4))
  Post_IA_ctr <- data.frame("id"=16:20, "treat"="control","time"="post","state"="IA","score"=rnorm(n=5,mean=45,sd=4))
  BMP_health <- rbind(Pre_OK_ctr,Post_OK_ctr,Pre_IA_ctr,Post_IA_ctr,Pre_OK_trt,Post_OK_trt,Pre_IA_trt,Post_IA_trt)
  write.csv(BMP_health, "C:/Users/Dan/Documents/Teaching/Samplg and Modlng Pops/Intro stats R code/BMP_health.csv", row.names=FALSE)
 
  
  #test modifying main branch after I protected it at github
  a=2+2
  b=1+1