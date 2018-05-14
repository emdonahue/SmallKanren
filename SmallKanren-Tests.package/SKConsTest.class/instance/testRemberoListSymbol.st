rembero
testRemberoListSymbol
	self assert: (#x rember: 1 o: Cons empty) fails. self assert: (#x rember: 1 o: 2 cons) fails.
	self assert: (#x rember: 2 o: 1 cons) fails