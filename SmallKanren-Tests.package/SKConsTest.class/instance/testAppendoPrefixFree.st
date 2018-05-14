appendo
testAppendoPrefixFree
	self assert: ((x append: Cons empty o: Cons empty) & (x === Cons empty)) succeeds.
	self assert: ((x append: 1 cons o: 1 cons)& (x === Cons empty)) succeeds.
	self assert: ((x append: Cons empty o: 1 cons)& (x === 1 cons)) succeeds.
	self assert: ((x append: 2 cons o: (1 cons: 2 cons))& (x === 1 cons)) succeeds