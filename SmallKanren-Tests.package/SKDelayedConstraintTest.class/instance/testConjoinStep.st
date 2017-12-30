conjoined
testConjoinStep
"Test that delayed goals complete normally if we continue to step them."
	| g |
	g := (x carCdrIn: [ :a :d | a === 1 | (a === 2) ]) & (x carCdrIn: [ :a :d | d === Cons empty ]).
	self assert: g step isDelayed.
	self assert: g step step isComplete.
	self assert: g step step first => x equals: 2 cons.
	self assert: g step step step => x equals: 1 cons