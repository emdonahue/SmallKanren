tests
testMergeAbsentoDisequality
	self assert: (no2 merge: xn1) equals: xn1, no2.
	self assert: (xn1 merge: no2) equals: no2, xn1.
	self assert: (no1 merge: xn1) equals: no1.
	self assert: (xn1 merge: no1) equals: no1.
	self assert: (no1 merge: xn2) equals: xn2, no1.
	self assert: (xn2 merge: no1) equals: no1, xn2.
	self assert: (no1 merge: xn1 & yn1) equals: no1.
	self assert: (xn1 & yn1 merge: no1) equals: no1.