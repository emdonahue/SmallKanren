tests - pair
testGroundPair
	self assert: (1 carCdro: [ :a :d]) equals: SKGoal fail.
	self assert: (Cons empty carCdro: [ :a :d]) equals: SKGoal fail.
	self assert: ((1 cons: 2) carCdro: [ :a :d | {a===1.d===2}]) equals: SKGoal succeed.
	self assert: ((1 cons: 2) carCdro: [ :a :d | {a===1.d===3}]) equals: SKGoal fail.
	