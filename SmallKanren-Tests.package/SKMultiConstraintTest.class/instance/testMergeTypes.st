tests
testMergeTypes
	self assert: (symbolo merge: symbolo) equals: symbolo.
	self assert: (symbolo merge: numbero) equals: unsatisfiable.
	self assert: (numbero merge: symbolo) equals: unsatisfiable.
	self assert: (numbero merge: numbero) equals: numbero.
	