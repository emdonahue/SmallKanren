tests
testAddOutOfOrder
	self assert: ((SBRAL empty at: 0 put: 42) at: 1) equals: 42.