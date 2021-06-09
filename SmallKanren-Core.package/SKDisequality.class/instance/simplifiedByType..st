simplifying
simplifiedByType: aType
	^ self val isSKVar | (aType isOfType: self val) ifTrue: self ifFalse: SKConstraint satisfied.