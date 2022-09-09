tests
testAddOutOfOrder
	self assert: ((SBRAL empty at: 1 put: 42) at: 1) equals: 42.