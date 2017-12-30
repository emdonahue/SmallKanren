tests
testCaroCdro
	self assert: (empty caro: 1 cdro: 2) equals: SKGoal fail.
	self assert: (pair caro: 2 cdro: 2) equals: SKGoal fail.
	self assert: (pair caro: 1 cdro: 1) equals: SKGoal fail.
	self assert: (pair caro: 1 cdro: 2) equals: SKGoal succeed.
	self assert: (pair caro: 1 cdro: x) isUnification .
	self assert: (pair caro: x cdro: 2) isUnification .
	self assert: (#symbol caro: 1 cdro: 2) equals: SKGoal fail