tests
testSelect
	| x g |
	x := SKVar new.
	g := x === 1 | (x === 2).
	self assert: (g runtime next select: [ :s | s => x = 2 ]) stream isState.
	self assert: (g runtime next select: [ :s | s => x = 1 ]) stream isState.
	self assert: (g runtime next select: [ :s | false ]) stream isFailure.