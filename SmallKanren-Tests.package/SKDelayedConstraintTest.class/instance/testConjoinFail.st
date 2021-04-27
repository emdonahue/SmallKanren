conjoined
testConjoinFail
	"Delays can return failures."
	| g |
	g := (x carCdrIn: [ :a :d | SKFail singleton ]) asGoal & (x carCdrIn: [ :a :d | SKSucceed singleton ]).
	self assert: g step isDelayed.
	self assert: g step step isFailure.
	g := (x carCdrIn: [ :a :d | SKSucceed singleton ]) asGoal & (x carCdrIn: [ :a :d | SKFail singleton ]).
	self assert: g step isDelayed.
	self assert: g step step isFailure