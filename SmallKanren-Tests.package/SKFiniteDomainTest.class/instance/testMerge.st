tests
testMerge
	self assert: ((SKConstraint finiteDomain: #(1 2)) merge: (SKConstraint finiteDomain: #(1 2 3))) equals: (SKConstraint finiteDomain: #(1 2)).
	self assert: ((SKConstraint finiteDomain: #(1 2)) merge: (SKConstraint finiteDomain: #(2 3))) equals: (SKConstraint unification: 2).
	self assert: ((SKConstraint finiteDomain: #(1 2)) merge: (SKConstraint finiteDomain: #(3 4))) equals: SKConstraint unsatisfiable.