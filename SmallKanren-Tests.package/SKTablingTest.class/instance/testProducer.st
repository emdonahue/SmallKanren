streams
testProducer
	| x |
	x := SKVar new.

	"State"
	self assert: (([[ :y | y === 1 ] tabled: #test inputs: {x}] asGoal runRuntimes last tables at: #test) at: x cons) first argv equals: 1 cons. 
	"Incomplete"
	"self assert: (([[ :y | [ y === 1 ]] tabled: #test inputs: {x}] asGoal runRuntimes last tables at: #test) at: x cons) first argv equals: 1 cons." 