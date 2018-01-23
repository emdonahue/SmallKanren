property
testSingleConstraint
	[ :const :val :pass | self class constraint: const value: val passes: pass ] asGoal run
		do: [ :cvp | 
			[ :c :v :p | 
			self assert: (c asGoalOn: v) succeeds equals: p.
			self assert: (x === v & (c asGoalOn: x)) succeeds equals: p.
			self assert: ((c asGoalOn: x) & (x === v)) succeeds equals: p.
			self assert: ((c asGoalOn: x) & (y === v) & (x === y)) succeeds equals: p.
			self assert: ((c asGoalOn: x) & (y === v) & (y === x)) succeeds equals: p.
			self assert: ((c asGoalOn: x) & (x === y) &  (y === v)) succeeds equals: p.
			self assert: ((c asGoalOn: x) & (y === x) & (y === v)) succeeds equals: p.
			self assert: ( (y === v) & (x === y) & (c asGoalOn: x)) succeeds equals: p.
self assert: ( (y === v) & (y === x) & (c asGoalOn: x)) succeeds equals: p.
self assert: ( (x === y) &  (y === v) & (c asGoalOn: x)) succeeds equals: p.
self assert: ( (y === x) & (y === v) & (c asGoalOn: x)) succeeds equals: p.
			 ] valueWithArguments: cvp ]