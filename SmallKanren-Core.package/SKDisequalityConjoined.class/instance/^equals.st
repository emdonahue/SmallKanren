debugging
= aGoal
	| aConstraint |
	((aGoal isKindOf: SKGoal) | (aGoal isKindOf: SKConstraint)) ifFalse: [ ^ false ].
	aConstraint := aGoal asConstraint.
	aConstraint class = self class ifFalse: [ ^ false ].
	^ (rest subsumes: aConstraint rest) & (aConstraint rest subsumes: rest).