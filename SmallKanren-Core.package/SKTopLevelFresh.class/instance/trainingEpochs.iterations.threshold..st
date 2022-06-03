probability
trainingEpochs: aModel iterations: numIterations threshold: aThreshold
	| iterations convergence |
	iterations := 0.
	convergence := false.
	^ (SKRuntime train: aModel on: self) takeWhile: [ :e | 
		iterations := iterations + 1. 
		convergence := e likelihoodDelta <= aThreshold.
		iterations ~= numIterations and: convergence not ].