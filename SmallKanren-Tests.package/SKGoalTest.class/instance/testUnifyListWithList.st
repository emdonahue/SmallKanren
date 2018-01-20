unify
testUnifyListWithList
	| ss |
	ss := ((x cons: y cons) === (y cons: 42 cons: z)) runner runAll.
	self assert: ss size equals: 1.
	self assert: ss first => x equals: 42.
	self assert: ss first => y equals: 42.
	self assert: ss first => z equals: Cons empty