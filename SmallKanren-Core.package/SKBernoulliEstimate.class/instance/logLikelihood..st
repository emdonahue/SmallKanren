as yet unclassified
logLikelihood: anObservation
	anObservation isZero ifTrue: [ ^ self log: 1 ln difference: logP ].
	^ logP.
	