tests
testMultiEager
	self assert: (((x match2: #(_ | _) o: [ :a :d | a === 1 ]) & (x match2: #(_ | _) o: [ :a :d | d === 2 ]) run: s runtime: r) unify: x with: (y cons: z)) => x equals: (1 cons: 2).	
	self assert: (((x match2: #(_ _) o: [ :a :d | a === 1 ]) & (x match2: #(_ _) o: [ :a :d | d === 2 ]) run: s runtime: r) unify: x with: (y cons: z)) => x equals: (1 cons: 2 cons).
	self should: [ ((x match2: #(_1 _1) o: [ :a :d |  ]) & (x match2: #(_1 _1) o: [ :a :d |  ]) run: s runtime: r) eager: r ] raise: ArgumentsCountMismatch.
	self assert: (((x match2: #(_1 _ _1) o: [ :a :d | a === 1 ]) & (x match2: #(_1 _ _1) o: [ :a :d | d === 2 ]) run: s runtime: r) unify: x with: (y cons: z)) => x equals: (1 cons: 2 cons: 1 cons).
	self assert: (((x match2: #(_1 (_ _1)) o: [ :a :d | a === 1 ]) & (x match2: #(_1 (_ _1)) o: [ :a :d | d === 2 ]) run: s runtime: r) unify: x with: (y cons: z)) => x equals: (1 cons: (2 cons: 1 cons) cons).
	self assert: (((x match2: #(_ _ _) o: [ :a :b :c | a === 1 ]) & (x match2: #(_ _ _) o: [ :a :b :c | b === 2 ]) & (x match2: #(_ _ _) o: [ :a :b :c | c === 3 ]) run: s runtime: r) unify: x with: (y cons: z)) => x equals: (1 cons: 2 cons: 3 cons).
	self assert: (((x match2: #(_ _) o: [ :a :d | a === 1 ]) & (x match2: #(_ _) o: [ :a :d | d === 2 ]) run: s runtime: r) eager: r) substitution size equals: 3.
	