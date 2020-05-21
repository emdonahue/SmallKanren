unify
testUnifyOccursCheck
	| ss |
	ss := ((x cons) === (x cons cons)) runner runAll.
	self assert: ss size equals: 0.