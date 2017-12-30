tests
testQuote
	| ss |
	ss := (eval value: (#quote cons: 42 cons) value: env value: x) runner runAll.
	self assert: ss first => x equals: 42.