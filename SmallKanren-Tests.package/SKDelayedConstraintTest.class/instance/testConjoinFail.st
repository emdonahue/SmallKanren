conjoined
testConjoinFail
	"Delays can return failures."
	| g |
	g := (x carCdrIn: [ :a :d | SKFailure singleton ]) asGoal & (x carCdrIn: [ :a :d | SKSuccess singleton ]).
	self assert: g step isDelayed.
	self assert: g step step isEmptyStream.
	g := (x carCdrIn: [ :a :d | SKSuccess singleton ]) asGoal & (x carCdrIn: [ :a :d | SKFailure singleton ]).
	self assert: g step isDelayed.
	self assert: g step step isEmptyStream