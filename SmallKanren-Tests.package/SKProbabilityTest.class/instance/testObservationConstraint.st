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
	
	