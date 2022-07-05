tests - pattern
testMultiUnify
	self assert: (((x match: #(_ | _) o: [ :a :d | a === 1 ]) & (x match: #(_ | _) o: [ :a :d | d === 2 ]) run: s runtime: r) unify: x with: 1) step isFailure.
	self assert: (((x match: #(_ | _) o: [ :a :d | a === 1 ]) & (x match: #(_ | _) o: [ :a :d | d === 2 ]) run: s runtime: r) unify: x with: (y cons: 1)) step isFailure.
	self assert: (((x match: #(_ | _) o: [ :a :d | a === 1 ]) & (x match: #(_ | _) o: [ :a :d | d === 2 ]) run: s runtime: r) unify: x with: (2 cons: z)) step isFailure.
	self assert: (((x match: #(_ | _) o: [ :a :d | a === 1 ]) & (x match: #(_ | _) o: [ :a :d | d === 2 ]) run: s runtime: r) unify: x with: (y cons: z)) step => (y cons: z) equals: (1 cons: 2).	
	self assert: (((x match: #(_ _) o: [ :a :d | a === 1 ]) & (x match: #(_ _) o: [ :a :d | d === 2 ]) run: s runtime: r) unify: x with: (y cons: z)) step => (y cons: z) equals: (1 cons: 2 cons).
	self should: [ ((x match: #(_1 _1) o: [ :a :d |  ]) & (x match: #(_1 _1) o: [ :a :d |  ]) run: s runtime: r) step ] raise: Error.
	self assert: (((x match: #(_1 _ _1) o: [ :a :d | a === 1 ]) & (x match: #(_1 _ _1) o: [ :a :d | d === 2 ]) run: s runtime: r) unify: x with: (y cons: z)) step => (y cons: z) equals: (1 cons: 2 cons: 1 cons).
	self assert: (((x match: #(_1 (_ _1)) o: [ :a :d | a === 1 ]) & (x match: #(_1 (_ _1)) o: [ :a :d | d === 2 ]) run: s runtime: r) unify: x with: (y cons: z)) step => (y cons: z) equals: (1 cons: (2 cons: 1 cons) cons).
	self assert: (((x match: #(_ _) o: [ :a :d | a === 1 ]) & (x match: #(_ _) o: [ :a :d | d === 2 ]) run: s runtime: r) step) substitution size equals: 3.
	