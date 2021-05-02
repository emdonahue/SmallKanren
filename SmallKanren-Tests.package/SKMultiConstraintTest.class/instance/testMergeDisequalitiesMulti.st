tests
testMergeDisequalitiesMulti
	self assert: (xn1, null merge2: xn2) equals: xn2, xn1, null.
	self assert: (null, xn1 merge2: xn2) equals: xn2, null, xn1.
	self assert: (xn1, null merge2: xn1) equals: xn1, null.
	self assert: (null, xn1 merge2: xn1) equals: null, xn1.
	self assert: (xn2 merge2: xn1, null) equals: xn2, xn1, null.
	self assert: (xn2 merge2: null, xn1) equals: xn2, null, xn1.
	self assert: (xn1 merge2: xn1, null) equals: xn1, null.
	self assert: (xn1 merge2: null, xn1) equals: null, xn1.