consumer
testTabledMplusFailure
	| r |
	r := [ :x | [ :y | y === 1 ] tabled: #tbl inputs: {x} ].
	self assert: [ :a | {r value: a. r value: a. r value: a} conde ] asGoal runtime runForced equals: #((1) (1) (1)) asConsR.