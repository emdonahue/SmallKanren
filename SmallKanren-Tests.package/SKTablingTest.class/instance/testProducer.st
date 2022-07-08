streams
testProducer
	| x z |
	x := SKVar tag: #x.
	z := SKVar tag: #z.	

	"Failure"
	self assert: (([[ :y | SKGoal fail ] tabled: #test inputs: {x}] asGoal runtime runTablesOnly tables at: #test) at: x cons) equals: Cons empty. 
	"State"
	self assert: (([[ :y | y === 1 ] tabled: #test inputs: {x}] asGoal runRuntimes last tables at: #test) at: x cons) first argv equals: 1 cons. 
	"Output vars"
	self assert: (([[ :a :b | {a === 1. b === 2} ] tabled: #test inputs: {x} outputs: {z}] asGoal runRuntimes last tables at: #test) at: x cons) first argv equals: 1 cons.
	self assert: ([[ :a :b | {a === 1. b === 2} ] tabled: #test inputs: {x} outputs: {z}] asGoal runStates first reify: (x cons: z)) equals: (1 cons: 2).
	"Incomplete"
	self assert: (([[ :y | [ y === 1 ]] tabled: #test inputs: {x}] asGoal runRuntimes last tables at: #test) at: x cons) first argv equals: 1 cons.
	"Complete"
	self assert: ((([[ :y | y === 1 | (y === 2)] tabled: #test inputs: {x}] asGoal runRuntimes last tables at: #test) at: x cons) collect: #argv) equals: #((2) (1)) asConsR.	
	"MPlus"
	self assert: ((([[ :y | [y === 1] asGoal | [y === 2]] tabled: #test inputs: {x}] asGoal runRuntimes last tables at: #test) at: x cons) collect: #argv) equals: #((2) (1)) asConsR.		
		"Guarded"
	self assert: (([[ :y | y carCdro: [ :a :d | {a === 1. d === 2} ]] tabled: #test inputs: {x}] asGoal runRuntimes last tables at: #test) at: x cons) first argv equals: (1 cons: 2) cons. 