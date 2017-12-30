tests
testPlusDelay
	"Step through a delayed mplus."
	| g |
	g := (x carCdrIn: [ :a :d | a === 1 & d isEmptyo ]) | (x carCdrIn: [ :a :d | a === 2 & d isEmptyo ]).
	self assert: g step isDelayedPlus.
	self assert: g step step isComplete.
	self assert: g step step first => x equals: 1 cons.
	self assert: g step step step isDelayed.
	self assert: g step step step step isState.
	self assert: g step step step step => x equals: 2 cons