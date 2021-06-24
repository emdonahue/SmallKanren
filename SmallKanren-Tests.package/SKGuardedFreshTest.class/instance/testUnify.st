tests - pattern
testUnify 	
		self skip.
	self assert: (((x match: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) asStream) unify: x with: 1) asAnswer	 equals: failure.
	self assert: (((x match: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) asStream) unify: x with: (y cons: z)) asAnswer => (y cons: z) equals: (1 cons: 2).
	self assert: (((x match: #(_ _) o: [ :a :d | a === 1 & (d === 2) ]) asStream) unify: x with: (y cons: z)) asAnswer => (y cons: z) equals: (1 cons: 2 cons).
	self should: [ (x match: #(_1 _1) o: [ :a :d |  ]) asAnswer ] raise: Error.
	self assert: (((x match: #(_1 _ _1) o: [ :a :d | a === 1 & (d === 2) ]) asStream) unify: x with: (y cons: z)) asAnswer => (y cons: z) equals: (1 cons: 2 cons: 1 cons).
	self assert: (((x match: #(_1 (_ _1)) o: [ :a :d | a === 1 & (d === 2) ]) asStream) unify: x with: (y cons: z)) asAnswer => (y cons: z) equals: (1 cons: (2 cons: 1 cons) cons).
	self assert: ((x match: #(_ _) o: [ :a :d | a === 1 & (d === 2) ]) asAnswer) substitution size equals: 3.
	self assert: (((x match: #(_ | _) o: [ :a :d :a2 :d2 | a2 === 1 & (d2 === 2) & (a===a2) & (d===d2) ]) asStream) unify: x with: (y cons: z)) asAnswer => (y cons: z) equals: (1 cons: 2).