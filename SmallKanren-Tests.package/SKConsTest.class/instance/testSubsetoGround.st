subseto
testSubsetoGround
	self assert: (Cons empty subseto: Cons empty) succeeds.
	self assert: ((1 cons: 2 cons) subseto: Cons empty) succeeds.
	self assert: ((1 cons: 2 cons) subseto: 1 cons) succeeds.
	self assert: ((1 cons: 2 cons) subseto: 2 cons) succeeds.
	self assert: ((1 cons: 2 cons) subseto: (1 cons: 2 cons)) succeeds.
	self assert: ((1 cons: 2 cons) subseto: (2 cons: 1 cons)) succeeds.
	self assert: (3 subseto: 1 cons) fails.
	self assert: ((1 cons: 2 cons) subseto: 3 cons) fails.
	self assert: (3 subseto: Cons empty) fails