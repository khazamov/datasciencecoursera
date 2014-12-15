complete <- function(directory, id=1:332) {
  
  
  len1 <- 0;
  for (i in id)
  {
    grandsum <- 0;
    if (i <= 9) { str <- "00" }
    else if ( i<= 99) { str<- "0"}
    else if (i < 999) { str <- ""}
    
    filename <- paste(directory,str,sep="/")
    filename <- paste(filename,i,sep="")
    filename <- paste(filename,".csv",sep="")
    print(filename)
    pollutionlevel = read.csv(filename,head=TRUE,sep=",")
    
    grandsum <- sum(complete.cases(pollutionlevel)) 
    
    print(grandsum)
  }
  
  
  
  
}

