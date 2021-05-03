simplifying
simplifiedByType: aConstraint
	^ self = aConstraint
		ifTrue: SKConstraint satisfied
		ifFalse: SKConstraint unsatisfiable.