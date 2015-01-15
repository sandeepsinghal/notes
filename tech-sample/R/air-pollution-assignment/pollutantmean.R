pollutantmean <- function (directory, pollutant = "sulfate", id) {
    if (pollutant == "sulphate"){
        print("s")
    }
    else {
        print("p")
    }
}
pollutantmean <- function (directory, pollutant = "sulfate", id) {
    data <- data.frame()
    for (i in id){
        filenumber <- sprintf("%03d", i)
        filename <- paste(directory , '/', filenumber , ".csv" , sep ="")
        d <- read.csv(filename)        
        data <- rbind(data,d)
    }
    pmean <- 0 
    if (pollutant == "sulfate"){
        pmean <- mean(data[, "sulfate"], na.rm = TRUE)    
    }
    else if (pollutant == "nitrate"){
        pmean <- mean(data[, "nitrate"], na.rm = TRUE)    
    }
    round(pmean,3)
}
