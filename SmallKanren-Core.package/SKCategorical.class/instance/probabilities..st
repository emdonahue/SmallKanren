accessing
probabilities: someProbs
	self logProbabilities: (someProbs collect: [ :p | p ln ]).