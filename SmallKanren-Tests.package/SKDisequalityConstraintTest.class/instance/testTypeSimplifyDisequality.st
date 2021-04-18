tests-typeo
testTypeSimplifyDisequality
	self assert: (SKConstraint symbolo simplify: (SKDisequalityConstraint left: x right: 1)) equals: SKConstraint satisfied.
	self assert: (SKConstraint symbolo simplify: (SKDisequalityConstraint left: x right: #symbol)) equals: (SKDisequalityConstraint left: x right: #symbol).