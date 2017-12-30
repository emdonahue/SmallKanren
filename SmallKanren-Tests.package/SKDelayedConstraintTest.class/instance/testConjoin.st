conjoined
testConjoin
	"Conjoined delays stack their constraints and form one delay."
	| g |
	g := (x carCdrIn: [ :a :d | a === 1 ]) asGoal & (x carCdrIn: [ :a :d | d === Cons empty ]).
	self assert: g step isDelayed.
	self assert: (g step constraints at: x) isConjoinedDelay.
	self assert: g step step isState.
	self assert: g step step => x equals: 1 cons