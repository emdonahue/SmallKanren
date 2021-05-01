tests
testLookupX
	| ss |
	ss := (eval value: #x value: env value: x) runtime runAll.
	self assert: ss first => x equals: 1.