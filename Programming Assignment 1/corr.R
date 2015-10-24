corr <- function(directory, threshold = 0) {
  dir <- paste(getwd(),'/',directory, sep ='')
  
  files <- list.files(dir)
  files_path <- paste(dir,'/',files, sep='')
  
  corr_vector <- c()
  
  for (i in 1:length(files)) {
    data <- read.csv(files_path[i], header=T, sep=",")
    nobs <- sum(complete.cases(data))
    if (nobs > threshold) {corr_vector <- c(corr_vector, cor(data$nitrate, data$sulfate, use="complete.obs")) }
    
  } 
  return(corr_vector)}

