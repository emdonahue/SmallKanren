pattern
testBoundPattern
	self setUp.
	self assert: ((x match: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) run: 
		(x===(y cons: z)) asAnswer runtime: r) => x equals: (1 cons: 2).
	self assert: ((x match: #(_ 2 _) o: [ :a :d | d === 3 ]) run: 
		(x===(1 cons: z)) asAnswer runtime: r) => x equals: (1 cons: 2 cons: 3 cons).