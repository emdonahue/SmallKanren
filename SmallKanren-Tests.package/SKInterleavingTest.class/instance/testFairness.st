tests
testFairness
	self
		assert:
			(({[ [ [ x === 1 ] ] ].
			[ {(x === 1).
			(x === 1).
			(x === 1).
			(x === 1).
			(x === 2)} asConde ]} asConde runner: SKInterleaving new) runAll collect: [ :s | s => x ]) asArray
		equals: #(1  1 2 1 1 1)