tests - pair
testCarList
	self assert: ((1 cons: 2 cons) car: 1 listo: [ :a | a===2 ]) asAnswer isState.
	self assert: ((1 cons: 2) car: 1 listo: [ :a | true ]) asAnswer equals: failure.
	self assert: ((2 cons: 2 cons) car: 1 listo: [ :a | true ]) asAnswer equals: failure.
	self assert: ((1 cons: 2 cons) car: 1 listo: [ :a | true ]) asAnswer isState.
	self assert: ((1 cons: 2 cons: 3 cons) car: 1 listo: [ :a | true ]) asAnswer equals: failure.
	self assert: ((1 cons: x cons) car: 1 listo: [ :a | a === 2 ]) asAnswer => x equals: 2.
	self assert: ((1 cons: x) car: 1 listo: [ :a | a === 2 ]) asAnswer => x equals: 2 cons.
	
	self assert: (x car: 1 list: 1 o: [ :d | d===2]) asGoal asAnswer => x equals: (1 cons: 2 cons).
	self assert: (x car: 1 list: 1 o: [ :d :e | {d===e. e===2}]) asGoal asAnswer => x equals: (1 cons: 2 cons).
	self assert: {x===(1 cons: 3 cons). x car: 1 list: 1 o: [ :d | d===2]} asGoal asAnswer equals: failure.
	self assert: {x===1. x car: 1 listo: [ :d | d===2]} asGoal asAnswer equals: failure.
	self assert: {x car: 1 listo: [ :d | d===2]. x===(1 cons: 3 cons)} asGoal asAnswer equals: failure.
	self assert: {x car: 1 listo: [ :d | true ]. x car: 1 listo: [ :d | true ]. x car: 2 listo: [ :d | true ]} asGoal asAnswer equals: failure.
	self assert: {x car: 1 listo: [ :d | true ]. x car: 1 listo: [ :d | true ]. x car: 1 list: 1 o: [ :d | true ]} asGoal asAnswer isState.
	self assert: {x car: 1 listo: [ :d | d === 2 ]. x car: 1 cdro: [ :d | d === 2 cons ]} asGoal asAnswer => x equals: (1 cons: 2 cons).
	self assert: {x car: y listo: [ :d | d===2 ]. x car: z listo: [ :d | true ]. z===1} asGoal asAnswer => y equals: 1.
	
	