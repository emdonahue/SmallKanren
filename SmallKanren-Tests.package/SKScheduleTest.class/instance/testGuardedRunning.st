tests
testGuardedRunning
	self assert: 
		(((s add: x schedule: 
			(SKGuardedFreshSingle fromPattern: #(_ | _) block: [ :a :d | a === 1 & (d === 2) ]))
				run: r) reify: x) equals: (1 cons: 2).