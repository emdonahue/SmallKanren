as yet unclassified
testNoExtraPassedConstraintsOnUnify
	"Checks that the PassedConstraints used as placeholders do not accidentally clutter up the ConstarintStore"
	| s |
	s := (z isSymbolo run: SKSubstitution new) unify: x with: y.
	self assert: s constraints store size equals: 1