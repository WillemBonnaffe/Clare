## splitPredictions.r ##
## goal: split predictions into a prediction set for a single drug

## update:
# 24-06-2021 - created version 0.1
#            - binned the data every 4
# 08-07-2021 - created version 0.2 to add drug name as name of the files

## load predictions
predictions = read.table("predictions.csv",sep=";",header=F)

## initiate 
binSize = 6

## circulate through each unique drug code
BNFVector = unique(predictions[,2])[1:100]
for(BNF in BNFVector)
{

	## get predictions for specific drug
	predictions_ = predictions[predictions[,2]==BNF,]

	## get drug name        
	DrugName_    = unique(predictions_[,1])
	predictions_ = predictions_[,-1] # remove name column

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
	DrugName_ = gsub(x=DrugName_,pattern=" ",replacement="_") 
	DrugName_ = gsub(x=DrugName_,pattern="/",replacement="_") 
	predictions_ = predictions_binned
	colnames(predictions_) = c("time","Y","Ybar","Ybar_lo","Ybar_hi")
	# write.table(predictions_,paste("individual_drugs/",BNF,".csv",sep=""),sep=",",row.names=FALSE,quote=FALSE)
	write.table(predictions_,paste("individual_drugs_6monthly/",DrugName_,".csv",sep=""),sep=",",row.names=FALSE,quote=FALSE)
}
