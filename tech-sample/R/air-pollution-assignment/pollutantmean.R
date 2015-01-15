pollutantmean <- function (directory, pollutant = "sulfate", id) {
    data <- data.frame()
    for (i in id){
        filenumber <- sprintf("%03d", i)
        filename <- paste(directory , filenumber , ".csv" , sep ="")
        d <- read.csv(filename)        
        data <- rbind(data,d)
    }
    m <- mean(data[pollutant], na.rm = TRUE)
    print(m)
}
