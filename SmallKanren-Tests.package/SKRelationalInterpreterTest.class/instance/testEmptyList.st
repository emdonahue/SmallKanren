tests
testEmptyList
	| ss |
	ss := (eval value: #list cons value: env value: x) runner runAll.
	self assert: ss first => x equals: Cons empty