################################################################
#create a mock data set
  set.seed(25) #sets the starting random number so we all get the same values from the random number generator
  control <- rnorm(n=9,mean=78,sd=10) #Create a random normal distibuted data set
  redBull <- rnorm(n=9,mean=72,sd=10)
  ginko <- rnorm(n=9,mean=79,sd=10)
  studentData <- data.frame(cbind(control, redBull, ginko))
  
  #need to reshape data so there is a column that identifies the group and then a column that has the measured value
  library(tidyr)
  studentDataTall <- gather(studentData, key="groupName", value="testScore", control, redBull, ginko)#Key=name for group column, value=name for response
