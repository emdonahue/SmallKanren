tests
testGuardedMatching
	self assert: 
		(((s add: x schedule: 
			(SKGuardedFreshSingle fromPattern: #(_ | _) block: [ :a :d | a === 1 ]))
				add: x schedule: (SKGuardedFreshSingle fromPattern: #(_ | _) block: [ :a :d | d === 2 ])) 
					schedule first isKindOf: SKGuardedFreshDisjoined).