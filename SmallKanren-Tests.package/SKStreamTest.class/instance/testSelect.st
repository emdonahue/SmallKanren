tests
testSelect
	| g |
	g := x === 1 | (x === 2).
	self assert: (g runner select: [ :s | s => x = 2 ]) stream isState.
	self assert: (g runner select: [ :s | s => x = 1 ]) stream isState.
	self assert: (g runner select: [ :s | false ]) stream isEmptyStream.