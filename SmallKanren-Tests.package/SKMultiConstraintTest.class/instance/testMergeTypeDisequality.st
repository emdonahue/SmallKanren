tests
testMergeTypeDisequality
	self assert: (numbero merge: xn1 asConstraint) equals: xn1, numbero.
	self assert: (symbolo merge: xn1 asConstraint) equals: symbolo.
	self assert: (symbolo merge: (xn2 & yn1) asConstraint) equals: symbolo.
	self assert: (numbero merge: (xn2 & yn1) asConstraint) equals: xn2 & yn1, numbero.
	self assert: (xn1 merge: numbero) equals: numbero, xn1.
	self assert: (xn1 merge: symbolo) equals: symbolo.
	self assert: (xn2 & yn1 merge: symbolo) equals: symbolo.
	self assert: (xn2 & yn1 merge: numbero) equals: numbero, (xn2 & yn1).
	self assert: ((xn1, xn2) merge: symbolo) equals: symbolo.
	self assert: (xny merge: symbolo) equals: symbolo, xny.