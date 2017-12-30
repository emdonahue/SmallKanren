streaming
plus: anAnswer
	anAnswer score < self score
		ifTrue: [ ^ anAnswer mplus: self ].
	^ self mplus: anAnswer