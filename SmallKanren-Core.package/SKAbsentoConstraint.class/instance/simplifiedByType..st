simplifying
simplifiedByType: aType
	"Absento implies either a cons pair or a raw value. Negating an absento requires implying the negation of both of those: neither pair nor the raw value."
	^ aType impliesNotCons & (aType typeChecks: excluded) not ifTrue: SKConstraint satisfied ifFalse: self.