rembero
testRemberoAllGround
	self assert: (1 cons rember: 1 o: Cons empty) succeeds.
	self assert: ((1 cons: 2 cons) rember: 1 o: 2 cons) succeeds.
	self assert: ((1 cons: 2 cons) rember: 2 o: 1 cons) succeeds