debugging
= aGoal
	(aGoal isKindOf: SKConstraint) | (aGoal isKindOf: SKGoal) ifFalse: [ ^ false ].
	^ self asConstraint = aGoal asConstraint.