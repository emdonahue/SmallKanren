tests-observation
testObservationConstraint
	| c |
	c := SKCategorical new.
	self assert: (((c sample: 1) runStates first pseudoCounts at: c) at: 1) equals: 0.
	self assert: (([ :x | {x === 1. c sample: x}] asGoal runStates first pseudoCounts at: c) at: 1) equals: 0.
	self assert: (([ :x | {c sample: x. x === 1}] asGoal runStates first pseudoCounts at: c) at: 1) equals: 0.

	self assert: (((c sample: (1 cons: 2)) runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	self assert: (([ :x | {x === (1 cons: 2). c sample: x}] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	self assert: (([ :x | {c sample: x. x === (1 cons: 2) }] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	
	self assert: (([ :x | {x === 1. c sample: (x cons: 2)}] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	self assert: (([ :x | {x === 2. c sample: (1 cons: x)}] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	self assert: (([ :x | {c sample: (x cons: 2). x === 1}] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	self assert: (([ :x | {c sample: (1 cons: x). x === 2}] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	
	self assert: (([ :x :y | {x === 1. c sample: y. y === (x cons: 2)}] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	self assert: (([ :x :y | {x === 2. c sample: y. y === (1 cons: x)}] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	self assert: (([ :x :y | {c sample: y. y === (x cons: 2). x === 1}] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	self assert: (([ :x :y | {c sample: y. y === (1 cons: x). x === 2}] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	
	self assert: (([ :x :y | {x === 1. y === (x cons: 2). c sample: y}] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	self assert: (([ :x :y | {x === 2. y === (1 cons: x). c sample: y}] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	self assert: (([ :x :y | {y === (x cons: 2). c sample: y. x === 1}] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	self assert: (([ :x :y | {y === (1 cons: x). c sample: y. x === 2}] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	
	self assert: (([ :x :y :z | {c sample: y. y === (x cons: z). z === 2. x === 1}] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	self assert: (([ :x :y :z | {c sample: y. y === (x cons: z). x === 1. z === 2}] asGoal runStates first pseudoCounts at: c) at: (1 cons: 2)) equals: 0.
	
	self assert: (([ :x :y :z :a | {c sample: y. y === (x cons: z). x === 1. z === (a cons: 2). a === 1}] asGoal runStates first pseudoCounts at: c) at: (1 cons: (1 cons: 2))) equals: 0.
	