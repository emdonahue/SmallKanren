tests
testMergeTypeDisequality
	self assert: (numbero merge2: xn1) equals: xn1, numbero.
	self assert: (symbolo merge2: xn1) equals: symbolo.
	self assert: (symbolo merge2: xn2 & yn1) equals: symbolo.
	self assert: (numbero merge2: xn2 & yn1) equals: xn2 & yn1, numbero.
	self assert: (xn1 merge2: numbero) equals: numbero, xn1.
	self assert: (xn1 merge2: symbolo) equals: symbolo.
	self assert: (xn2 & yn1 merge2: symbolo) equals: symbolo.
	self assert: (xn2 & yn1 merge2: numbero) equals: numbero, (xn2 & yn1).