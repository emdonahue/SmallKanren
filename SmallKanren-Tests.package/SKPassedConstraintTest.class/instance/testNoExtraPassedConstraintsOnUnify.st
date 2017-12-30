as yet unclassified
testNoExtraPassedConstraintsOnUnify
	"Checks that the PassedConstraints used as placeholders do not accidentally clutter up the ConstarintStore"
	| s |
	s := (z isSymbolo run: SKState new) unify: x with: y.
	self assert: s constraints size equals: 1