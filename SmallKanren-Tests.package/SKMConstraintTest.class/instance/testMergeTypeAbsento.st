tests
testMergeTypeAbsento
	self assert: (symbolo merge2: no1) equals: symbolo.
	self assert: (no1 merge2: symbolo) equals: symbolo.
	self assert: (symbolo merge2: no1| no2) equals: symbolo.
	self assert: (no1| no2 merge2: symbolo) equals: symbolo.
	self assert: (symbolo merge2: no1| noSymbol) equals: noSymbol, symbolo.
	self assert: (symbolo merge2: noSymbol| no1) equals: noSymbol, symbolo.
	self assert: (no1| noSymbol merge2: symbolo) equals: noSymbol, symbolo.
	self assert: (noSymbol| no1 merge2: symbolo) equals: noSymbol, symbolo.
	self assert: (numbero merge2: no1) equals: no1, numbero.
	self assert: (no1 merge2: numbero) equals: numbero, no1.
	self assert: (numbero merge2: no1| no2) equals: (no1 | no2), numbero.
	self assert: (no1, no2 merge2: numbero) equals: numbero, (no1 | no2).
	