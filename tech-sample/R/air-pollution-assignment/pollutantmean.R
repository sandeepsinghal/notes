pollutantmean <- function (directory, pollutant, id) {

  for (i in id){
    filenumber <- sprintf("%03d", i)
    filename <- paste("specdata/" , filenumber , ".csv" , sep ="")
    d <- read.csv(filename)
    
  }
  
}

