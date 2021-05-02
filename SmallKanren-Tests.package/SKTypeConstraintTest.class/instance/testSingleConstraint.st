property
testSingleConstraint
	[ :const :val :pass | self class constraint: const value: val passes: pass ] asGoal run
		do: [ :cvp | 
			[ :c :v :p | 
			self assert: (c asGoal: v) succeeds equals: p.
			self assert: (x === v & (c asGoal: x)) succeeds equals: p.
			self assert: ((c asGoal: x) & (x === v)) succeeds equals: p.
			self assert: ((c asGoal: x) & (y === v) & (x === y)) succeeds equals: p.
			self assert: ((c asGoal: x) & (y === v) & (y === x)) succeeds equals: p.
			self assert: ((c asGoal: x) & (x === y) &  (y === v)) succeeds equals: p.
			self assert: ((c asGoal: x) & (y === x) & (y === v)) succeeds equals: p.
			self assert: ( (y === v) & (x === y) & (c asGoal: x)) succeeds equals: p.
self assert: ( (y === v) & (y === x) & (c asGoal: x)) succeeds equals: p.
self assert: ( (x === y) &  (y === v) & (c asGoal: x)) succeeds equals: p.
self assert: ( (y === x) & (y === v) & (c asGoal: x)) succeeds equals: p.
			 ] valueWithArguments: cvp ]