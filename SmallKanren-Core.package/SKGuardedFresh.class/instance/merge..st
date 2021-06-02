merging
merge: aConstraint
	aConstraint isGuardedFresh ifTrue: [ ^ aConstraint add: self ] ifFalse: [ self halt ]. 