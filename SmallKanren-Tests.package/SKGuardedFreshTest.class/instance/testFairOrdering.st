fairfresh
testFairOrdering
	| g |
	g := [ :a :b :c | 
		{x === (a cons: b cons: c cons). [ a === 1 ] fresh. [ b === 2 ] fresh. [ c === 3 ] fresh}] asGoal.
	self assert: g step step schedule size equals: 3.
	self assert: g step step step schedule size equals: 2.
	self assert: (g step step step reify: x) first equals: 1.
	self assert: g step step step step schedule size equals: 1.
	self assert: (g step step step step reify: x) second equals: 2.
	self assert: g step step step step step schedule size equals: 0.
	self assert: (g step step step step step reify: x) third equals: 3.