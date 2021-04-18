tests-normalizing
testNormalizeConjunctionFree
	| conjoined |
	"This is a y constraint, and reducing y with 1"
	conjoined := ((x cons: y) =/= (1 cons: z)) asConstraint unify: y with: 1.
	self assert: conjoined isConjoinedDisequality.
	self assert: conjoined left equals: 1.
	self assert: conjoined right equals: z.