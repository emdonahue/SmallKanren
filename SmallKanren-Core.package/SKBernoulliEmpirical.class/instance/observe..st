as yet unclassified
observe: obs
	obs isZero ifTrue: [ ^ self copy zeroes: (zeroes ifNil: 0) + 1 ].
	^ self copy ones: (ones ifNil: 0) + 1.