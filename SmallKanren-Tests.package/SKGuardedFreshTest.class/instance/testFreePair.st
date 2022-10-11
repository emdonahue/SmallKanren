pair
testFreePair
	self assert: (x carCdro: [ :a :d | {a===1. d===2} ]) step step => x equals: (1 cons: 2).