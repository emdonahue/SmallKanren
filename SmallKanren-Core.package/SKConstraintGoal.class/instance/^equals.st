debugging
= aGoal
	self class = aGoal class ifFalse: [ ^ false ].
	^ self asConstraint = aGoal asConstraint.