tests - pair
testCarList
	self assert: ((1 cons: 2 cons) car: 1 list: 1 o: [ :a | a===2 ]) answer isState.
	self assert: ((1 cons: 2) car: 1 list: 1 o: [ :a | true ]) answer equals: failure.
	self assert: ((2 cons: 2 cons) car: 1 list: 1 o: [ :a | true ]) answer equals: failure.
	self assert: ((1 cons: 2 cons) car: 1 list: 2 o: [ :a | true ]) answer equals: failure.
	self assert: ((1 cons: 2 cons: 3 cons) car: 1 list: 1 o: [ :a | true ]) answer equals: failure.
	self assert: ((1 cons: x cons) car: 1 list: 1 o: [ :a | a === 2 ]) answer => x equals: 2.
	self assert: ((1 cons: x) car: 1 list: 1 o: [ :a | a === 2 ]) answer => x equals: 2 cons.
	
	self assert: (x car: 1 list: 1 o: [ :d | d===2]) asGoal answer => x equals: (1 cons: 2 cons).
	self assert: {x===(1 cons: 3 cons). x car: 1 list: 1 o: [ :d | d===2]} asGoal answer equals: failure.
	self assert: {x===1. x car: 1 list: 1 o: [ :d | d===2]} asGoal answer equals: failure.
	self assert: {x car: 1 list: 1 o: [ :d | d===2]. x===(1 cons: 3 cons)} asGoal answer equals: failure.
	self assert: {x car: 1 list: 1 o: [ :d | true ]. x car: 1 list: 1 o: [ :d | true ]. x car: 2 list: 1 o: [ :d | true ]} asGoal answer equals: failure.
	self assert: {x car: 1 list: 1 o: [ :d | true ]. x car: 1 list: 1 o: [ :d | true ]. x car: 1 list: 2 o: [ :d | true ]} asGoal answer equals: failure.
	self assert: {x car: 1 list: 1 o: [ :d | d === 2 ]. x car: 1 cdro: [ :d | d === 2 cons ]} asGoal answer => x equals: (1 cons: 2 cons).
	