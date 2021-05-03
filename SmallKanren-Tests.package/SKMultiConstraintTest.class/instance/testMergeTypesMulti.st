tests
testMergeTypesMulti
	self assert: (symbolo, null merge: symbolo) equals: symbolo, null.
	self assert: (null, symbolo merge: symbolo) equals: null, symbolo.
	self assert: (symbolo merge: symbolo, null) equals: symbolo, null.
	self assert: (symbolo merge: null, symbolo) equals: null, symbolo.
	self assert: (symbolo, null merge: numbero) equals: unsatisfiable.
	self assert: (null, symbolo merge: numbero) equals: unsatisfiable.
	self assert: (numbero merge: symbolo, null) equals: unsatisfiable.
	self assert: (numbero merge: null, symbolo) equals: unsatisfiable.
	self assert: (symbolo, null merge: symbolo, null) equals: null, symbolo, null.
	self assert: (null, symbolo merge: symbolo, null) equals: null, null, symbolo.
	self assert: (symbolo, null merge: null, symbolo) equals: null, symbolo, null.
	self assert: (null, symbolo merge: null, symbolo) equals: null, null, symbolo.
	self assert: (null, symbolo, null merge: null, symbolo) equals: null, null, symbolo, null.
	self assert: (null, symbolo merge: null, symbolo, null) equals: null, null, null, symbolo.
	self assert: (null, symbolo, null merge: null, symbolo, null) equals: null, null, null, symbolo, null.