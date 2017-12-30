tests
testLookupFirst
	| ss |
	ss := (lookup value: #x value: env value: x) runner runAll.
	self assert: ss first => x equals: 1.