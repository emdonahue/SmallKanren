unify
testUnifyOccursCheck
	| ss |
	ss := ((x cons) === (x cons cons)) runStates.
	self assert: ss size equals: 0.