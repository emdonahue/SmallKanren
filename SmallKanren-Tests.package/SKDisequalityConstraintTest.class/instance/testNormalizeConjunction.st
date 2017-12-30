tests-normalizing
testNormalizeConjunction
	| xNot1  |
	"This is a y-constraint, and reducing with 2 satisfies y, leaving only x=/=1."
	xNot1 := ((x cons: y) =/= (1 cons: 2)) asConstraint reduceWithInitialValue: 2.
	self assert: xNot1 isDisequality.
	self assert: xNot1 left equals: x.
	self assert: xNot1 right equals: 1.
	"This is a y constraint, and so unifying y with 1 makes it unsatisfiable as 2, so the whole thing passes."
	self assert: (((x cons: y) =/= (1 cons: 2)) asConstraint reduceWithInitialValue: 1) isSatisfied.