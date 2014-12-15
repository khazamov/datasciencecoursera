pollutantmean <- function(directory, pollutant, id=1:332) {

sum <- 0;
len1 <- 0;
for (i in id)
  {
  if (i <= 9) { str <- "00" }
    else if ( i<= 99) {str<- "0"}
        else if (i < 999) { str <- ""}
  
filename <- paste(directory,str,sep="/")
filename <- paste(filename,i,sep="")
filename <- paste(filename,".csv",sep="")

pollutionlevel = read.csv(filename,head=TRUE,sep=",")
sum <- sum + sum((pollutionlevel[pollutant] )[!is.na((pollutionlevel[pollutant]))])
len1 <- len1 + length((pollutionlevel[pollutant]) [!is.na((pollutionlevel[pollutant]))])
}
print(sum)
print(len1)
print(sum/len1)

}


