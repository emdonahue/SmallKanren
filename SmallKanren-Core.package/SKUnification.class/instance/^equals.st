comparing
= aGoal
	aGoal class = self class ifFalse: [ ^ false ].
	^ left = aGoal left & (right = aGoal right).