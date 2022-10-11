tests
testMergeFreshDisequality
	self skip.
	self assert: ((x match: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) & (x=/=(3 cons: 4)) run: s runtime: r) step => x equals: (1 cons: 2).
	self assert: ((x match: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) & (x=/=(1 cons: 2)) run: s runtime: r) step equals: failure.