tests
testStrictOr
	self assert: (SKSuccess singleton | SKSuccess singleton) step isComplete.
	self assert: (1 === 2 | (3 === 4)) step isEmptyStream.
	self assert: (x === 1 | (x === 2)) step isComplete.
	self assert: (x === 1 | (x === 2 & (x === 3))) step isState.
	self assert: ((x === 2 & (x === 3)) | (x === 1)) step isState