tests
testMergeDisequalitiesMulti
	self assert: (xn1, null merge: xn2) equals: xn2, xn1, null.
	self assert: (null, xn1 merge: xn2) equals: xn2, null, xn1.
	self assert: (xn1, null merge: xn1) equals: xn1, null.
	self assert: (null, xn1 merge: xn1) equals: null, xn1.
	self assert: (xn2 merge: xn1, null) equals: xn2, xn1, null.
	self assert: (xn2 merge: null, xn1) equals: xn2, null, xn1.
	self assert: (xn1 merge: xn1, null) equals: xn1, null.
	self assert: (xn1 merge: null, xn1) equals: null, xn1.