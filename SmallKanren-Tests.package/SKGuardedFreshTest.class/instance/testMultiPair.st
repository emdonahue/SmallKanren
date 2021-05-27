tests - pair
testMultiPair
	self assert: ({x carCdro: [ :a :d | a===1 ]. x carCdro: [ :a :d | d===2]} asGoal step step reify: x) equals: (1 cons: 2).
	self assert: {x===(y cons: z). {x carCdro: [ :a :d | a===1 ]. x carCdro: [ :a :d | d===2]} asGoal} asGoal step step => (y cons: z) equals: (1 cons: 2).