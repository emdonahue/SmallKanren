simplifying
simplifiedByType: aType
	^ (aType typeChecks: right) 
		ifTrue: self
		ifFalse: SKConstraint satisfied.