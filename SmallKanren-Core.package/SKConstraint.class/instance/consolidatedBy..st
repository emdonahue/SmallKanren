merging
consolidatedBy: aConstraint
	| s |
	s := aConstraint simplify: self.
	s = self class satisfied ifTrue: [ ^ aConstraint ].
	s = self class unsatisfiable ifTrue: [ ^ s ].
	s == self ifTrue: [ ^ self ].
	^ SKMultiConstraint first: s rest: aConstraint.