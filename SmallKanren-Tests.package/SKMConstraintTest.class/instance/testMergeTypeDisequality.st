tests
testMergeTypeDisequality
	self assert: (numbero merge2: xn1) equals: (SKMConstraint first: xn1 rest: numbero).
	self assert: (symbolo merge2: xn1) equals: symbolo.
	self assert: (symbolo merge2: xn2 & yn1) equals: (SKMConstraint first: yn1 rest: symbolo).
	self assert: (numbero merge2: xn2 & yn1) equals: (SKMConstraint first: xn2 & yn1 rest: numbero).
	self assert: (xn1 merge2: numbero) equals: (SKMConstraint first: numbero rest: xn1).
	self assert: (xn1 merge2: symbolo) equals: symbolo.
	self assert: (xn2 & yn1 merge2: symbolo) equals: yn1, symbolo.
	self assert: (xn2 & yn1 merge2: numbero) equals: (SKMConstraint first: numbero rest: xn2 & yn1).