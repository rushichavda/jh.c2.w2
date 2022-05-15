complete<-function(directory,id){
  obs<-c()
  for (moniter in id){
    path <- paste(getwd(),"/", sprintf("%03d", moniter), ".csv", sep = "")
    file<-read.csv(path)
    nitratel<-is.na(file["nitrate"])
    sulfatel<-is.na(file["sulfate"])
    sumid<-nitratel+sulfatel
    sumidf<-sum(sumid==0)
    obs<-c(obs,sumidf)
    }
  final<-cbind(id,obs)
  final
}