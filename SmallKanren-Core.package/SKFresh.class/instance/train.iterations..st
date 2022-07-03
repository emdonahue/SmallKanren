probability
train: aModel iterations: numIterations
	"Ignore threshold if iterations is bounded."
	^ (self trainingEpochs: aModel iterations: numIterations threshold: 0) last.