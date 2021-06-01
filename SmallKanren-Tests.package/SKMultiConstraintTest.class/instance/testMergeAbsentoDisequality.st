tests
testMergeAbsentoDisequality
	self assert: (no2 merge: xn1 asConstraint) equals: xn1, no2.
	self assert: (xn1 merge: no2 asConstraint) equals: no2, xn1.
	self assert: (no1 merge: xn1 asConstraint) equals: no1.
	self assert: (xn1 merge: no1 asConstraint) equals: no1.
	self assert: (no1 merge: xn2 asConstraint) equals: xn2, no1.
	self assert: (xn2 merge: no1 asConstraint) equals: no1, xn2.
	self assert: (no1 merge: (xn1 & yn1) asConstraint) equals: no1.
	self assert: (xn1 & yn1 merge: no1 asConstraint) equals: no1.
	self assert: (no4,no3 merge: no3, xn2) equals: no3, no4, xn2.