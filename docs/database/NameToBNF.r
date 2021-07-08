Data = read.table("predictions.csv",sep=";",header=F)
Data = Data[,1:2]
Data = apply(Data,2,unique)
write.table(Data,"NameToBNF.txt",sep=" ",quote=FALSE,row.names=FALSE)
