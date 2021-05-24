tests
testConstantPattern
	self assert: ((((x cons: 2) match2: #(1 | 2) o: [ true ]) run: s runtime: r) reify: x) equals: 1.
	self assert: ((((x cons: y) match2: #(1 2 _) o: [ :a | a === 3 ]) run: s runtime: r) reify: (x cons: y)) equals: (1 cons: 2 cons: 3 cons).
	