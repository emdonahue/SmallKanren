merging
compress: aConstraint
	"aFD has already been simplified to just the elements we lack, so we can just append them."
	aConstraint isFiniteDomain ifTrue: [ ^ aConstraint ].
	aConstraint isSingleDisequality ifTrue: [ ^ aConstraint simplifyFiniteDomain: self ].
	aConstraint isAbsento ifTrue: [ ^ self class domain: (domain reject: [ :x | aConstraint isAbsent: x ]) ].