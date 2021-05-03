tests-typeo
testTypeSimplifyDisequality
	self assert: (SKConstraint symbolo simplify: (SKDisequalityPair left: x right: 1)) equals: SKConstraint satisfied.
	self assert: (SKConstraint symbolo simplify: (SKDisequalityPair left: x right: #symbol)) equals: (SKDisequalityPair left: x right: #symbol).