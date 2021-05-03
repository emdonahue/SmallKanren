simplifying
simplifiedByAbsento: anAbsento
	^ (anAbsento isAbsent: right) 
		ifTrue: SKConstraint satisfied
		ifFalse: self