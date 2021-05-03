simplifying
simplifiedByType: aType
	^ (aType isOfType: right) ifTrue: self ifFalse: SKConstraint satisfied.