unify
testUnifyValsAndFail
	| ss |
	ss := (42 === 51) runner runAll.
	self assert: ss size equals: 0.