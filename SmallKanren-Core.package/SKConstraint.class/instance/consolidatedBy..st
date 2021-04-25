merging
consolidatedBy: aConstraint
	| s |
	s := aConstraint simplify: self.
	s = self class satisfied ifTrue: [ ^ aConstraint ].
	s = self class unsatisfiable ifTrue: [ ^ s ].
	s == self ifTrue: [ ^ self ].
	^ SKMConstraint first: s rest: aConstraint.