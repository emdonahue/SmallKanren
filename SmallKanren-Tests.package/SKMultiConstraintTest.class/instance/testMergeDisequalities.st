tests
testMergeDisequalities
	self assert: (xn1 merge: xn2) equals: xn2, xn1.
	self assert: (xn1 merge: xn1) equals: xn1.
	self assert: (yn1 & xn1 merge: xn1) equals: xn1.
	self assert: (xn1 & yn1 merge: xn1) equals: xn1.
	self assert: (xn1 merge: yn1 & xn1) equals: xn1.
	self assert: (xn1 merge: xn1 & yn1) equals: xn1.
	self assert: (xn1 & yn1 merge: xn2) equals: xn2, (xn1 & yn1).
	self assert: (xn1 & yn1 merge: xn1 & yn2) equals: (xn1 & yn2, (xn1 & yn1)).
	self assert: (xn1 & yn1 merge: xn1 & yn1) equals: xn1 & yn1.
	self assert: (xn1 & yn1 merge: yn1 & xn1) equals: xn1 & yn1.