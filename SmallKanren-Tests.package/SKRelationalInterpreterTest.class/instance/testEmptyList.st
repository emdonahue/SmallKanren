tests
testEmptyList
	| ss |
	ss := (eval value: #list cons value: env value: x) runtime runAll.
	self assert: ss first => x equals: Cons empty