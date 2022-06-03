probability
train: aModel threshold: aThreshold
	"Ignore iterations if threshold supplied."
	^ (self trainingEpochs: aModel iterations: -1 threshold: aThreshold) last.