tests - pair
testBoundPair
	self assert: {x===1. x carCdro: [ :a :d]} asGoal asAnswer equals: failure.
	self assert: {x carCdro: [ :a :d]. x===1} asGoal asAnswer equals: failure.
	self assert: {x===(1 cons: 2). x carCdro: [ :a :d | {a===1.d===2}]} asGoal asAnswer isState.