tests
testLookupY
	| ss |
	ss := (eval value: #y value: env value: x) runtime runAll.
	self assert: ss first => x equals: 2.