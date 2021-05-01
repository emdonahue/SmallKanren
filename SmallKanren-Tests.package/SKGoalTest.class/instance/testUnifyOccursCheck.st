unify
testUnifyOccursCheck
	| ss |
	ss := ((x cons) === (x cons cons)) runtime runAll.
	self assert: ss size equals: 0.