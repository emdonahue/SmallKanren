tests - pair
testCar
	self assert: ((1 cons: 2) car: 1 cdro: [ :d | d===2 ]) answer isState.
	self assert: ((2 cons: 2) car: 1 cdro: [ :d | d===2 ]) answer equals: failure.
	self assert: ((1 cons: 2) car: 1 cdro: [ :d | d===3 ]) answer equals: failure.
	self assert: (Cons empty car: 1 cdro: [ :d | d===3 ]) answer equals: failure.
	self assert: (x car: 1 cdro: [ :d | d===2]) asGoal answer => x equals: (1 cons: 2).
	self assert: {x===(1 cons: 3). x car: 1 cdro: [ :d | d===2]} asGoal answer equals: failure.
	self assert: {x===Cons empty. x car: 1 cdro: [ :d | d===2]} asGoal answer equals: failure.
	self assert: {x car: 1 cdro: [ :d | d===2]. x===(1 cons: 3)} asGoal answer equals: failure.
	self assert: {x car: 1 cdro: [ :d | true ]. x car: 1 cdro: [ :d | true ]. x car: 2 cdro: [ :d | true ]} asGoal answer equals: failure.
	"self assert: {x car: 1 cdro: [ :a]. x carCdro: [ :a :d | d===2]} asGoal answer => x equals: (1 cons: 2)."
	