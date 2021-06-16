## splitPredictions.r ##
## goal: split predictions into a prediction set for a single drug

## load predictions
predictions = read.table("predictions.csv",sep=";",header=F)

## circulate through each unique drug code
BNFVector = unique(predictions[,1])[1:2]
for(BNF in BNFVector)
{
	predictions_ = predictions[predictions[,1]==BNF,]
	write.table(predictions_,paste("individual_drugs/",BNF,".csv",sep=""),sep=";",row.names=FALSE,quote=FALSE)
}
