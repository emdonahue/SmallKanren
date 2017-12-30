running
testRunnerNext
	"Delays behave in runners."
	| r |
	r := ((x carCdrIn: [ :a :d | a === 1 & d isEmptyo ]) | (x carCdrIn: [ :a :d | a === 2 & d isEmptyo ])) runner.
	self assert: r step stream isDelayedPlus.
	self assert: r step step stream isComplete.
	self assert: r next stream isComplete.
	self assert: r step step step stream isDelayed.
	self assert: r step step step step stream isState.
	self assert: r next next stream isState