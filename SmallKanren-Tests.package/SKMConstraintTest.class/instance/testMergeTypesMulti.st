tests
testMergeTypesMulti
	self assert: (symbolo, null merge2: symbolo) equals: symbolo, null.
	self assert: (null, symbolo merge2: symbolo) equals: null, symbolo.
	self assert: (symbolo merge2: symbolo, null) equals: symbolo, null.
	self assert: (symbolo merge2: null, symbolo) equals: null, symbolo.
	self assert: (symbolo, null merge2: numbero) equals: unsatisfiable.
	self assert: (null, symbolo merge2: numbero) equals: unsatisfiable.
	self assert: (numbero merge2: symbolo, null) equals: unsatisfiable.
	self assert: (numbero merge2: null, symbolo) equals: unsatisfiable.
	self assert: (symbolo, null merge2: symbolo, null) equals: null, symbolo, null.
	self assert: (null, symbolo merge2: symbolo, null) equals: null, null, symbolo.
	self assert: (symbolo, null merge2: null, symbolo) equals: null, symbolo, null.
	self assert: (null, symbolo merge2: null, symbolo) equals: null, null, symbolo.
	self assert: (null, symbolo, null merge2: null, symbolo) equals: null, null, symbolo, null.
	self assert: (null, symbolo merge2: null, symbolo, null) equals: null, null, null, symbolo.
	self assert: (null, symbolo, null merge2: null, symbolo, null) equals: null, null, null, symbolo, null.