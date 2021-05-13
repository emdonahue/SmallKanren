tests
testMergeDisequality
	self assert: ((SKConstraint finiteDomain: #(1 2)) merge: (x=/=3) asConstraint) equals: (SKConstraint finiteDomain: #(1 2)).
	self assert: ((SKConstraint finiteDomain: #(1 2)) merge: ((x=/=3) & (y=/=2)) asConstraint) equals: (SKConstraint finiteDomain: #(1 2)).
	self assert: ((SKConstraint finiteDomain: #(1 2)) merge: (y=/=x) asConstraint) equals: (y=/=x) asConstraint, (SKConstraint finiteDomain: #(1 2)).
	self assert: ((SKConstraint finiteDomain: #(1 2)) merge: ((x=/=1) & (y=/=2)) asConstraint) equals: ((x=/=1) & (y=/=2)) asConstraint, (SKConstraint finiteDomain: #(1 2)).
	self assert: ((SKConstraint finiteDomain: #(1 2 3)) merge: (x=/=1) asConstraint) equals: (SKConstraint finiteDomain: #(2 3)).
	