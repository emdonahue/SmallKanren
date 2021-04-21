merging
consolidate: aConstraint
	| s |
	s := aConstraint complicate: self.
	s = self class satisfied ifTrue: [ ^ aConstraint ].
	s = self class unsatisfiable ifTrue: [ ^ s ].
	s = self ifTrue: [ ^ self ].
	^ s , aConstraint.