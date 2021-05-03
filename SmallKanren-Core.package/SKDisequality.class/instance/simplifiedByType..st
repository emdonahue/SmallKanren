simplifying
simplifiedByType: aType
	^ (aType isOfType: self val) ifTrue: self ifFalse: SKConstraint satisfied.