pattern
testAdvanceSchedule
	self assert: ((((x match: #(_ | _) o: [ :a :d | a === 1 & (d === 2) ]) run: s runtime: r) step) reify: x) equals: (1 cons: 2).
	self assert: (((x match: #(_ _) o: [ :a :d | a === 1 & (d === 2) ]) run: s runtime: r) step) => x equals: (1 cons: 2 cons).
	self should: [ ((x match: #(_1 _1) o: [ :a :d |  ]) run: s runtime: r) step ] raise: Error.
	self assert: (((x match: #(_1 _ _1) o: [ :a :d | a === 1 & (d === 2) ]) run: s runtime: r) step) => x equals: (1 cons: 2 cons: 1 cons).
	self assert: (((x match: #(_1 (_ _1)) o: [ :a :d | a === 1 & (d === 2) ]) run: s runtime: r) step) => x equals: (1 cons: (2 cons: 1 cons) cons).
	self assert: (((x match: #(_ _) o: [ :a :d | a === 1 & (d === 2) ]) run: s runtime: r) step) substitution size equals: 3.