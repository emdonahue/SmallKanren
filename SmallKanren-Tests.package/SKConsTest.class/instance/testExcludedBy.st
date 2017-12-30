tests
testExcludedBy
	self assert: (empty skExcludedBy: (x absento: 1) asConstraint in: s) equals: s.
	self assert: (pair skExcludedBy: (x absento: 1) asConstraint in: s) isEmptyStream.
	self assert: (pair skExcludedBy: (x absento: 2) asConstraint in: s) isEmptyStream.
	self assert: (pair skExcludedBy: (x absento: 3) asConstraint in: s) equals: s.
	self assert: ((Cons car: x cdr: y) skExcludedBy: (x absento: 2) asConstraint in: s) isEmptyStream