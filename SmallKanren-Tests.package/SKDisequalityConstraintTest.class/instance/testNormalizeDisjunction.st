tests-normalizing
testNormalizeDisjunction
	| constraint |
	constraint := (x =/= 1) asConstraint disequality: (y =/= 2) asConstraint.
	self assert: (constraint reduceWithInitialValue: 1) isUnsatisfiable.
	self assert: (constraint reduceWithInitialValue: 2) isSingleDisequality.
	self assert: (constraint reduceWithInitialValue: z) isDisjoinedDisequality.