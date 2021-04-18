constraint-specific
type: aTypeConstraint
	 ^ (self isSameTypeAs: aTypeConstraint )
		ifTrue: self
		ifFalse: SKConstraint unsatisfiable.