conjoined
testConjoinFail
	"Delays can return failures."
	| g |
	g := (x carCdro: [ :a :d | SKFail singleton ]) asGoal & (x carCdro: [ :a :d | SKSucceed singleton ]).
	self assert: g step isDelayed.
	self assert: g step step isFailure.
	g := (x carCdro: [ :a :d | SKSucceed singleton ]) asGoal & (x carCdro: [ :a :d | SKFail singleton ]).
	self assert: g step isDelayed.
	self assert: g step step isFailure