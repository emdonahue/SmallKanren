tests-closing
testFailOnClosedCache
	| x |
	x := SKVar tag: #x.
	"Failure"
	self assert: 
		[{[ :y | SKGoal fail ] tabled: #test inputs: {x}.
		[ :y | SKGoal succeed ] tabled: #test inputs: {x}} conde] asGoal runtime step stream isFailure.