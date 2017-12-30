tests
testAndOr
	| ss |
	ss := {{(x === 1).
	(x === 2)}.
	{(y === 1).
	(y === 2)}} asGoal runner runAll.
	self assert: ss size equals: 4.
	"Use prime factorization to check all combinations."
	self assert: (ss collect: [ :s | (2 raisedTo: s => x) * (3 raisedTo: s => y) ]) sorted equals: #(6 12 18 36) asOrderedCollection