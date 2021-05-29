tests - pattern
testGround
	self assert: ((1 match2: #(_) o: [ :a | ]) run: s runtime: r) equals: failure.
	self assert: (((2 cons: 2) match2: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) run: s runtime: r) equals: failure.
	self assert: (((1 cons: 3) match2: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) run: s runtime: r) equals: failure.
	self assert: (((1 cons: 2) match2: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) run: s runtime: r) isState.
	self assert: ((((x cons: y) match2: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) run: s runtime: r) reify: (x cons: y)) equals: (1 cons: 2).