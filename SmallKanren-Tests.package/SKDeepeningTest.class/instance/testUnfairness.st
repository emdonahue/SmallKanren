tests
testUnfairness
	self
		assert:
			(({[ [ [ x === 2 ] ] ].
			[ {(x === 1).
			(x === 1).
			(x === 1).
			(x === 1).
			(x === 1)} asConde ]} asConde runner: SKDeepening new) runAll collect: [ :s | s => x ]) asArray
		equals: #(1 1 1 1 1 2)