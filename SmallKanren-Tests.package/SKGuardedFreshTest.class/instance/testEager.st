tests
testEager
	self assert: (((x match2: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) run: s) eager: r) => x equals: (1 cons: 2).
	self assert: (((x match2: #(_ _) o: [ :a :d | a === 1 & (d === 2) ]) run: s) eager: r) => x equals: (1 cons: 2 cons).
	self assert: (((x match2: #(_ _) o: [ :a :d | a === 1 & (d === 2) ]) run: s) eager: r) substitution size equals: 3.