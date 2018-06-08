member
testMemberoGround
	self assert: (1 cons membero: 1) succeeds.
	self assert: ((2 cons: 1 cons) membero: 1) succeeds.
	self assert: (2 cons membero: 1) fails.
	self assert: ((2 cons: 3 cons) membero: 1) fails.