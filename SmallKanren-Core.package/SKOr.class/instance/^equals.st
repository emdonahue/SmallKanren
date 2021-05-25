comparing
= aGoal
	self class = aGoal class ifFalse: [ ^ false ].
	^ left = aGoal left & (right = aGoal right).