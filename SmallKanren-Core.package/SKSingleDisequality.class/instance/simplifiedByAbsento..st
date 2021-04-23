simplifying
simplifiedByAbsento: anAbsento
	^ (anAbsento excludes: right) 
		ifTrue: SKConstraint satisfied
		ifFalse: self