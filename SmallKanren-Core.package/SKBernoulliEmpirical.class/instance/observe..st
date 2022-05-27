as yet unclassified
observe: obs
	"Add 1 to appropriate count in log space (1 ln = 0)."
	self halt.
	obs isZero ifTrue: [ ^ self copy zeroes: (self log: zeroes sum: 0) ].
	^ self copy ones: (self log: ones sum: 0).