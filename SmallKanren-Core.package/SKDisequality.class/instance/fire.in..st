checking
fire: aVal in: aState
	^ (self disunify: aVal in: aState substitution) addDisequalities: aState.