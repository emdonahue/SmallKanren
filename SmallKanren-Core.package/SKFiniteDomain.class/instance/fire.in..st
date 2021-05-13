checking
fire: aVal in: aState
	^ (domain includes: aVal) ifTrue: aState ifFalse: SKStream failure.