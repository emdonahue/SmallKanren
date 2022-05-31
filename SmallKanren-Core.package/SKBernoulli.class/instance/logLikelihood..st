as yet unclassified
logLikelihood: anObservation
	anObservation isZero ifTrue: [ ^ self log: 0 difference: logP ]. "1-p in log space."
	^ logP.
	