## splitPredictions.r ##
## goal: split predictions into a prediction set for a single drug

## update:
# 24-06-2021 - created version 0.1
#            - binned the data every 4

## load predictions
predictions = read.table("predictions.csv",sep=";",header=F)

## initiate 
binSize = 6

## circulate through each unique drug code
BNFVector = unique(predictions[,1])[1:100]
for(BNF in BNFVector)
{
	## get predictions for specific drug
	predictions_ = predictions[predictions[,1]==BNF,]

	## bin predictions by chunks of binSize months
	predictions_binned = NULL
	nBins = floor(nrow(predictions_)/binSize)
	for(k in 1:nBins)
	{
		predictions__ = predictions_[1:binSize+binSize*(k-1),-1]
		predictions__ = apply(predictions__,2,sum)
		predictions__ = c(k,predictions__[-1])
		predictions_binned = rbind(predictions_binned,predictions__) 
	}

	## terminate
	predictions_ = predictions_binned
	colnames(predictions_) = c("time","Y","Ybar","Ybar_lo","Ybar_hi")
	write.table(predictions_,paste("individual_drugs/",BNF,".csv",sep=""),sep=",",row.names=FALSE,quote=FALSE)
}
