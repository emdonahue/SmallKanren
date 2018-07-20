lasto
testLastoGround
	self assert: (Cons empty lasto: 1) fails.
	self assert: (1 cons lasto: 1) succeeds.
	self assert: ((1 cons: 2 cons) lasto: 1) fails.
	self assert: ((1 cons: 2 cons) lasto: 2) succeeds.
	