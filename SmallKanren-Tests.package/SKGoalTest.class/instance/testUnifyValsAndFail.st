unify
testUnifyValsAndFail
	| ss |
	ss := (42 === 51) runtime runAll.
	self assert: ss size equals: 0.