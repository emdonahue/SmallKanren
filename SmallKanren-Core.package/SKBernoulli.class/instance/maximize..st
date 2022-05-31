probability
maximize: aSufficientStatistic
	^ self class new logP: aSufficientStatistic second 
		- (self log: aSufficientStatistic second sum: aSufficientStatistic first).
	