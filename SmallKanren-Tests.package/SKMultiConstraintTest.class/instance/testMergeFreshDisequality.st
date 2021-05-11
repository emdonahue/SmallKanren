tests
testMergeFreshDisequality
	self assert: (((x match2: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) & (x=/=(3 cons: 4)) run: s runtime: r) eager: r) => x equals: (1 cons: 2).
	self assert: (((x match2: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) & (x=/=(1 cons: 2)) run: s runtime: r) eager: r) equals: failure.