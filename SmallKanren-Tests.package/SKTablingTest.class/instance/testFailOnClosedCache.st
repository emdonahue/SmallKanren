tests-closing
testFailOnClosedCache
	| x |
	x := SKVar tag: #x.
	"Fail on start"
	self assert: 
		[{[ :y | SKGoal fail ] tabled: #test inputs: {x}.
		[ :y | SKGoal succeed ] tabled: #test inputs: {x}} conde] asGoal runtime step stream isFailure.

	"Fail when returning an answer (incomplete -> complete -> reused -> state)"
	self assert: 
		[{[ :y | SKGoal succeed ] tabled: #test inputs: {x}.
		[ :y | SKGoal succeed ] tabled: #test inputs: {x}} conde] asGoal runtime step step step stream isState.

	"Fail having detected the close after all answers have been returned."
	self assert: ((
		[{[ :y | SKGoal succeed | [[ SKGoal fail ]] ] tabled: #test inputs: {x}.
		[[[ SKGoal fail ]]].
		[ :y | SKGoal succeed ] tabled: #test inputs: {x}.
		} conde] asGoal runtime steps: 9) stream isKindOf: SKIncomplete).