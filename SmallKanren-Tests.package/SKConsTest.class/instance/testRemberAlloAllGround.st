remberAllo
testRemberAlloAllGround
	self assert: (1 cons remberAll: 1 cons o: Cons empty) succeeds.
	self assert: ((1 cons: 2 cons) remberAll: 1 cons o: 2 cons) succeeds.
	self assert: ((1 cons: 2 cons) remberAll: 2 cons o: 1 cons) succeeds