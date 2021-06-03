tests - pattern
testWalked
	self assert: ((x match2: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) run: (s unify: x with: 1) runtime: r) asAnswer equals: failure.
	self assert: ((x match2: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) run: (s unify: x with: (y cons: z)) runtime: r) asAnswer => (y cons: z) equals: (1 cons: 2).
	self assert: ((x match2: #(_ _) o: [ :a :d | a === 1 & (d === 2) ]) run: (s unify: x with: (y cons: z)) runtime: r) asAnswer => (y cons: z) equals: (1 cons: 2 cons).
	self assert: ((x match2: #(_1 _ _1) o: [ :a :d | a === 1 & (d === 2) ]) run: (s unify: x with: (y cons: z)) runtime: r) asAnswer => (y cons: z) equals: (1 cons: 2 cons: 1 cons).
	self assert: ((x match2: #(_1 (_ _1)) o: [ :a :d | a === 1 & (d === 2) ]) run: (s unify: x with: (y cons: z)) runtime: r) asAnswer => (y cons: z) equals: (1 cons: (2 cons: 1 cons) cons).