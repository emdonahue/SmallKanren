rembero
testRemberoListFree
	self assert: (x  rember: 1 o: Cons empty) succeeds.
	self assert: ((x ) rember: 1 o: 2 cons) succeeds.
	self assert: ((x ) rember: 2 o: 1 cons) succeeds