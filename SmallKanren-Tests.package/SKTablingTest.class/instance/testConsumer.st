tests-streaming
testConsumer
	| x z |
	x := SKVar tag: #x.
	z := SKVar tag: #z.	

	"Conjunction"
	self assert: (([{[ :y | y === 1 ] tabled: #test inputs: {x}. 
			[ :y | y === 1 ] tabled: #test inputs: {x}}] asGoal runRuntimes last 
		tables at: #test) at: x cons) first argv equals: 1 cons. 
		
	"Output"
	self assert: ([{[ :y :b | {{y === 1. b === 2}. {y === 1. b === 3}} conde ] tabled: #test inputs: {x} outputs: {z}.
			[ :y :b | SKGoal fail ] tabled: #test inputs: {x} outputs: {z}} conde] asGoal reify: (x cons: z cons)) equals: #((1 2) (1 2)) asConsR.
	
	"Deduplication"
	self assert: ([{[ :y | {y === 1. y === 2. y === 1. y === 2} conde ] tabled: #test inputs: {x}. 
			[ :y | y === 1 ] tabled: #test inputs: {x}}] asGoal runStates 
		collect: [ :s | s reify: x ]) equals: 1 cons. 
	
	"MPlus"
	self assert: (([{[ :y | y === 1 ] tabled: #test inputs: {x}. 
			[ :y | y === 2 ] tabled: #test inputs: {x}} conde] asGoal runRuntimes last 
		tables at: #test) at: x cons) first argv equals: 1 cons.
		
	self assert: ([{[ :y | y === 1 ] tabled: #test inputs: {x}. 
			[ :y | y === 2 ] tabled: #test inputs: {x}} conde] asGoal runStates 
		collect: [ :s | s reify: x ]) equals: #(1 1) asCons.
	
	"ReusedMPlus"
	self assert: ([
		{[ :y | [y === 1]] tabled: #test inputs: {x}. 
		[ :y | y === 2 ] tabled: #test inputs: {x}.
		[ :y | y === 3 ] tabled: #test inputs: {x}} conde] asGoal runStates 
			collect: [ :s | s reify: x ]) equals: #(1 1 1) asCons.
			
		self assert: (([
		{[ :y | [y === 1]] tabled: #test inputs: {x}. 
		[ :y | y === 2 ] tabled: #test inputs: {x}.
		[ :y | y === 3 ] tabled: #test inputs: {x}} conde] asGoal runRuntimes last 
		tables at: #test) at: x cons) first argv equals: 1 cons.