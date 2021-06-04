tests - pair
testAlist
	self assert: (((1 cons: 2) cons: 3) carCdrResto: [ :aa :ad :d | {aa===1. ad===2. d===3} ]) asAnswer isState.
	self assert: ((4 cons: 3) carCdrResto: [ :aa :ad :d ]) asAnswer equals: failure.
	self assert: (4 carCdrResto: [ :aa :ad :d ]) asAnswer equals: failure.
	self assert: (((1 cons: 2) cons: 3) carCdrResto: [ :aa :ad :d | {aa===4. ad===2. d===3} ]) asAnswer equals: failure.
	self assert: (((1 cons: 2) cons: 3) carCdrResto: [ :aa :ad :d | {aa===1. ad===4. d===3} ]) asAnswer equals: failure.
	self assert: (((1 cons: 2) cons: 3) carCdrResto: [ :aa :ad :d | {aa===1. ad===2. d===4} ]) asAnswer equals: failure.
	self assert: (((x cons: y) cons: z) carCdrResto: [ :aa :ad :d | {aa===1. ad===2. d===3} ]) asAnswer => {x. y. z} equals: #(1 2 3).
	self assert: (x carCdrResto: [ :aa :ad :d | {aa===1. ad===2. d===3} ]) asAnswer => x equals: ((1 cons: 2) cons: 3).
	self assert: ((x cons: y) carCdrResto: [ :aa :ad :d | {aa===1. ad===2. d===3} ]) asAnswer => {x. y} equals: {1 cons: 2. 3}.
	"self assert: ((2 cons: 2) car: 1 cdro: [ :d | d===2 ]) answer equals: failure.
	self assert: ((1 cons: 2) car: 1 cdro: [ :d | d===3 ]) answer equals: failure.
	self assert: (x car: 1 cdro: [ :d | d===2]) asGoal answer => x equals: (1 cons: 2).
	self assert: {x===(1 cons: 3). x car: 1 cdro: [ :d | d===2]} asGoal answer equals: failure.
	self assert: {x car: 1 cdro: [ :d | d===2]. x===(1 cons: 3)} asGoal answer equals: failure.
	self assert: {x car: 1 cdro: [ :d | true ]. x car: 1 cdro: [ :d | true ]. x car: 2 cdro: [ :d | true ]} asGoal answer equals: failure."