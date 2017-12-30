reducing
type: aTypeConstraint
	 ^ (self isSameTypeAs: aTypeConstraint )
		ifTrue: self
		ifFalse: SKUnsatisfiableConstraint singleton 