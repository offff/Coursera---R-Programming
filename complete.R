complete <- function(directory, id = 1:332) {
  dir <- paste(getwd(),'/',directory, sep ='')
  
  files <- list.files(dir)
  files_path <- paste(dir,'/',files, sep='')
  
  dataset <- data.frame()
  
  for (i in id) {
    nobs <- sum(complete.cases(read.csv(files_path[i], header=T, sep=",")))
    temp <- data.frame(i, nobs)
    dataset <- rbind(dataset, temp)
  }
  colnames(dataset) <- c("id", "nobs")
  dataset
  
}

