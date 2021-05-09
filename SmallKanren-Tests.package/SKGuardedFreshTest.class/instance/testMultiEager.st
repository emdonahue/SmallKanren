tests
testMultiEager
	self assert: (((s 
		add: x constraint: (SKGuardedFresh new block: [ :a :d | a === 1 ])) 
		add: x constraint: (SKGuardedFresh new block: [ :a :d | (d === 2) ])) 
			eager: r) => x equals: (1 cons: 2).