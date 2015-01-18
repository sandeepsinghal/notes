corrFile <- function (fileName, threshold = 0) {
    x <- read.csv(fileName)
    
    cData <- x[!is.na(x$"sulfate") & !is.na(x$"nitrate") & x$"sulfate" > threshold & x$"nitrate" > threshold,]
    
    if (nrow(cData) > 1) {
        sulfate <- cData[, c("sulfate")]
        nitrate <- cData[, c("nitrate")]
        monitorCor <- cor(sulfate, nitrate)
        return(monitorCor)
    }    
}

corr <- function(directory, threshold = 0) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'threshold' is a numeric vector of length 1 indicating the
    ## number of completely observed observations (on all
    ## variables) required to compute the correlation between
    ## nitrate and sulfate; the default is 0
    
    ## Return a numeric vector of correlations
    files = list.files(directory)
    corVector <- vector(mode = "numeric")
    
    for (file in files){
        fileName <- paste(directory, "/", file, sep ="")
        m <- corrFile(fileName, threshold)
        corVector <- c(corVector, m)
        if (fileName == "specdata/020.csv") {
            #break
        }
    }
    corVector
}