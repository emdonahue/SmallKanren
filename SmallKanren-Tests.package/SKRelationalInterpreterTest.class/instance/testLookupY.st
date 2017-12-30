tests
testLookupY
	| ss |
	ss := (eval value: #y value: env value: x) runner runAll.
	self assert: ss first => x equals: 2.