as yet unclassified
testConstraintsEmptyOnUnify
	| s |
	s := (SKSubstitution new ) unify: x with: y.
	self assert: s isSubstitution