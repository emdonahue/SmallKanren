tests
testEagerMatch
	self assert: 
		(((x match2: #(_ _) o: [ :a :d | a === 1 & (d === 2) ]) run: s) eager: r) => x
		equals: (1 cons: 2).