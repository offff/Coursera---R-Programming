pollutantmean <- function(directory, pollutant, id = 1:332) {
  dir <- paste(getwd(),'/',directory, sep ='')
  
  files <- list.files(dir)
  files_path <- paste(dir,'/',files, sep='')
  
  dataset <- data.frame()
  
  for (i in id) {
    dataset <- rbind(dataset, read.csv(files_path[i], header=T, sep=","))
  }
  
  if (pollutant == "sulfate") {
    mean(dataset$sulfate, na.rm=T)  
  } else {
    mean(dataset$nitrate, na.rm=T)
  }
  
}

