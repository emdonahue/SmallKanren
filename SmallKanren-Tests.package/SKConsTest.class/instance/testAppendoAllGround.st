appendo
testAppendoAllGround
	self assert: (Cons empty append: Cons empty o: Cons empty) succeeds.
	self assert: (Cons empty append: 1 cons o: 1 cons) succeeds.
	self assert: (1 cons append: Cons empty o: 1 cons) succeeds.
	self assert: (1 cons append: 2 cons o: (1 cons: 2 cons)) succeeds