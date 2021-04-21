tests
testMergeDisequalities
	self assert: (xn1 merge2: xn2) equals: (SKMConstraint first: xn2 rest: xn1).
	self assert: (xn1 merge2: xn1) equals: xn1.
	self assert: (yn1 & xn1 merge2: xn1) equals: yn1 & xn1.
	self assert: (xn1 & yn1 merge2: xn2) equals: (SKMConstraint first: xn2 rest: xn1 & yn1).