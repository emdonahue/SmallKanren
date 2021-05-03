accessing
simplifiedByAbsento: anAbsento
	^ (anAbsento isAbsent: self val) 
		ifTrue: SKConstraint satisfied
		ifFalse: self