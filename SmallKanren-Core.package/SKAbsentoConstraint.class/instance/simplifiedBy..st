simplifying
simplifiedBy: aConstraint
	^ (aConstraint simplifiesAbsento: absent) ifTrue: SKConstraint satisfied ifFalse: self.