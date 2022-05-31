as yet unclassified
logLikelihood: x
	<todo> "degrade gracefully when std = 0, eg when taking MLE of one point"
	^  x - mean exp / 	std exp ** 2 * -0.5 
			- std 
			- (Float pi * 2) sqrt ln.