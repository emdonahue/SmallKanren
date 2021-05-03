simplifying
simplifiedByAbsento: anAbsento
	"If anAbsento already contains our term, we are redundant."
	^ (anAbsento simplifiesAbsento: absent) 
		ifTrue: SKConstraint satisfied
		ifFalse: self.