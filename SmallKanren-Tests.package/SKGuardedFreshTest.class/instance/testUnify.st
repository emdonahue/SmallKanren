tests - pattern
testUnify 	
	self assert: (((x match2: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) run: s) unify: x with: 1) step equals: failure.
	self assert: (((x match2: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) run: s) unify: x with: (y cons: z)) step => (y cons: z) equals: (1 cons: 2).
	self assert: (((x match2: #(_ _) o: [ :a :d | a === 1 & (d === 2) ]) run: s) unify: x with: (y cons: z)) step => (y cons: z) equals: (1 cons: 2 cons).
	self should: [ ((x match2: #(_1 _1) o: [ :a :d |  ]) run: s) step ] raise: Error.
	self assert: (((x match2: #(_1 _ _1) o: [ :a :d | a === 1 & (d === 2) ]) run: s) unify: x with: (y cons: z)) step => (y cons: z) equals: (1 cons: 2 cons: 1 cons).
	self assert: (((x match2: #(_1 (_ _1)) o: [ :a :d | a === 1 & (d === 2) ]) run: s) unify: x with: (y cons: z)) step => (y cons: z) equals: (1 cons: (2 cons: 1 cons) cons).
	self assert: (((x match2: #(_ _) o: [ :a :d | a === 1 & (d === 2) ]) run: s) step) substitution size equals: 3.
	self assert: (((x match2: #(_ | _) o: [ :a :d :a2 :d2 | a2 === 1 & (d2 === 2) & (a===a2) & (d===d2) ]) run: s) unify: x with: (y cons: z)) step => (y cons: z) equals: (1 cons: 2).