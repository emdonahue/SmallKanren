as yet unclassified
observe: anObs weight: aWeight
	"Add 1 to appropriate count in log space (1 ln = 0)."
	anObs isZero ifTrue: [ ^ self copy zeroes: (self log: zeroes sum: aWeight) ].
	^ self copy ones: (self log: ones sum: aWeight).