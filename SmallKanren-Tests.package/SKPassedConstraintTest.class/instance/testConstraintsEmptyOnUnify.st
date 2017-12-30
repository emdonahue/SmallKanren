as yet unclassified
testConstraintsEmptyOnUnify
	| s |
	s := (SKState new ) unify: x with: y.
	self assert: s constraints isEmpty