probability
trainingEpochs: aModel iterations: numIterations threshold: aThreshold
	"Central user interface to run probability system. Returns a stream of TrainingEpochs containing model, likelihood, and likelihood delta."
	| iterations convergence |
	iterations := 0.
	convergence := false.
	^ (SKRuntime train: aModel on: self) takeWhile: [ :e | 
		iterations := iterations + 1. 
		convergence := e likelihoodDelta <= aThreshold ln.
		iterations ~= numIterations and: convergence not ].