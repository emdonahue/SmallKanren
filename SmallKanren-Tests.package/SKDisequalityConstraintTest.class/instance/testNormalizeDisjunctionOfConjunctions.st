tests-normalizing
testNormalizeDisjunctionOfConjunctions
	| constraint |
	"The leading variable is y"
	constraint := ((x cons: y) =/= (1 cons: 2)) asConstraint disequality: (y =/= 2) asConstraint.
	self assert: (constraint reduceWithInitialValue: 1) isSingleDisequality.
	self assert: (constraint reduceWithInitialValue: 2) isDisjoinedDisequality.
	self assert: (constraint reduceWithInitialValue: 2) first isSingleDisequality.
	self assert: (constraint reduceWithInitialValue: 2) first left equals: x