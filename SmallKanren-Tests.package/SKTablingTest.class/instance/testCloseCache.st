tests-closing
testCloseCache
	| x |
	x := SKVar tag: #x.
	"Failure"
	self assert: (([[ :y | SKGoal fail ] tabled: #test inputs: {x}] asGoal runtime runTablesOnly at: #test) at: x cons) isClosed. 
	"State"
	self assert: (([[ :y | SKGoal succeed ] tabled: #test inputs: {x}] asGoal runtime next tables at: #test) at: x cons) isClosed.
	"Complete (complete tail)"
	self assert: (([[ :y | SKGoal succeed | SKGoal succeed ] tabled: #test inputs: {x}] asGoal runtime next tables at: #test) at: x cons) isClosed.
	"Complete (incomplete tail)"
	self deny: (([[ :y | SKGoal succeed | [ SKGoal succeed ] ] tabled: #test inputs: {x}] asGoal runtime next tables at: #test) at: x cons) isClosed.