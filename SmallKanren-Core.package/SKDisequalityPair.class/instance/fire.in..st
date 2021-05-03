checking
fire: aVal in: aState
	^ (self disunify: aVal with: (aState walk: right) in: aState substitution) addTo: aState.