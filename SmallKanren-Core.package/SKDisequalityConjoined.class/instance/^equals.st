debugging
= aGoal
	| aConstraint |
	aConstraint := aGoal asConstraint.
	aConstraint class = self class ifFalse: [ ^ false ].
	^ (rest subsumes: aConstraint rest) & (aConstraint rest subsumes: rest).