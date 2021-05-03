tests
testExcludedBy
	self assert: (empty skAbsento: (x absento: 1) asConstraint in: s) equals: s.
	self assert: (pair skAbsento: (x absento: 1) asConstraint in: s) isFailure.
	self assert: (pair skAbsento: (x absento: 2) asConstraint in: s) isFailure.
	self assert: (pair skAbsento: (x absento: 3) asConstraint in: s) equals: s.
	self assert: ((Cons car: x cdr: y) skAbsento: (x absento: 2) asConstraint in: s) isFailure