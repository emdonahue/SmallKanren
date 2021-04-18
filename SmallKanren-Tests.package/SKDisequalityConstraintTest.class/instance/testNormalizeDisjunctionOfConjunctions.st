tests-normalizing
testNormalizeDisjunctionOfConjunctions
	| constraint |
	"The leading variable is y"
	self skip.
	constraint := ((x cons: y) =/= (1 cons: 2)) asConstraint disequality: (y =/= 2) asConstraint.
	self assert: (constraint unify: y with: 1) isSingleDisequality.
	self assert: (constraint unify: y with: 2) isDisjoinedDisequality.
	self assert: (constraint unify: y with: 2) first isSingleDisequality.
	self assert: (constraint unify: y with: 2) first left equals: x