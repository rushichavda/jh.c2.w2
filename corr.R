corr<-function(directory,threshold=0){
    id<-1:332
    corl<-c()
    for (monitor in id){
        path <- paste(getwd(),"/", sprintf("%03d", monitor), ".csv", sep = "")
        file<-read.csv(path)
        if(complete(directory,monitor)[1,2]>threshold){
              nit<-file["nitrate"]
              sul<-file["sulfate"]
              goodies<-complete.cases(nit,sul)
              corl<-c(corl,cor(nit[goodies,],sul[goodies,]))
        }
      
    }
    
    corl
    
}