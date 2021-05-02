checking
check: aVal in: aState
	^ (self disunify: aVal with: (aState walk: right) in: aState substitution) constrain: aState.