tests-normalizing
testNormalizeConjunctionFree
	| conjoined |
	"This is a y constraint, and reducing y with 1"
	conjoined := ((x cons: y) =/= (1 cons: z)) asConstraint reduceWithInitialValue: 1.
	self assert: conjoined isConjoinedDisequality.
	self assert: conjoined left equals: z.
	self assert: conjoined right equals: 1