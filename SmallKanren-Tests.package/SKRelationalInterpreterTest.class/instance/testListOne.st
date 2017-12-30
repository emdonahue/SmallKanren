tests
testListOne
	| ss |
	ss := (eval value: (#list cons: (#quote cons: 1 cons) cons) value: env value: x) runner runAll.
	self assert: ss first => x equals: 1 cons