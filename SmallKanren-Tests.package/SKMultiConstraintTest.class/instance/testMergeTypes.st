tests
testMergeTypes
	self assert: (symbolo merge2: symbolo) equals: symbolo.
	self assert: (symbolo merge2: numbero) equals: unsatisfiable.
	self assert: (numbero merge2: symbolo) equals: unsatisfiable.
	self assert: (numbero merge2: numbero) equals: numbero.
	