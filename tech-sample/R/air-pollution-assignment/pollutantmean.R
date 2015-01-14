pollutantmean <- function (directory, pollutant = "sulfate", id) {
    sum <- 0
    count <- 0
    
    for (i in id){
        filenumber <- sprintf("%03d", i)
        filename <- paste("specdata/" , filenumber , ".csv" , sep ="")
        
        d <- read.csv(filename)
        x <- d[!is.na(d[,"sulfate"]), ]
        
        sum = sum + sum(x[, "sulfate" ])
        count = count + nrow(x)
  }
  print (sum/count)  
}
