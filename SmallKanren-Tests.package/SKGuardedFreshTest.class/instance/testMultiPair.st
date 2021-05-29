tests - pair
testMultiPair
	self assert: ({x carCdro: [ :a :d | a===1 ]. x carCdro: [ :a :d | d===2]} asGoal answer reify: x) equals: (1 cons: 2).
	self assert: {x===(y cons: z). {x carCdro: [ :a :d | a===1 ]. x carCdro: [ :a :d | d===2]} asGoal} asGoal answer => (y cons: z) equals: (1 cons: 2).
	self assert: {x===(y cons: 3). {x carCdro: [ :a :d | a===1 ]. x carCdro: [ :a :d | d===2]} asGoal} asGoal answer equals: failure.
	self assert: {{x carCdro: [ :a :d | a===1 ]. x carCdro: [ :a :d | d===2]} asGoal. x===(y cons: z)} asGoal answer => (y cons: z) equals: (1 cons: 2).
	self assert: {{x carCdro: [ :a :d | a===1 ]. x carCdro: [ :a :d | d===2]} asGoal. x===(y cons: 3)} asGoal answer equals: failure.