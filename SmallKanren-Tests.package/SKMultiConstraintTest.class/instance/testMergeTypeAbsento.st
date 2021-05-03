tests
testMergeTypeAbsento
	self assert: (symbolo merge: no1) equals: symbolo.
	self assert: (no1 merge: symbolo) equals: symbolo.
	self assert: (symbolo merge: no1, no2) equals: symbolo.
	self assert: (no1, no2 merge: symbolo) equals: symbolo.
	self assert: (symbolo merge: no1, noSymbol) equals: noSymbol, symbolo.
	self assert: (symbolo merge: noSymbol, no1) equals: noSymbol, symbolo.
	self assert: (no1, noSymbol merge: symbolo) equals: noSymbol, symbolo.
	self assert: (noSymbol, no1 merge: symbolo) equals: noSymbol, symbolo.
	self assert: (numbero merge: no1) equals: no1, numbero.
	self assert: (no1 merge: numbero) equals: numbero, no1.
	self assert: (numbero merge: no1, no2) equals: no1, no2, numbero.
	self assert: (no1, no2 merge: numbero) equals: numbero, no1, no2.
	