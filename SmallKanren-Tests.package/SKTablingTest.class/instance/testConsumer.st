streams
testConsumer
	| x z |
	x := SKVar tag: #x.
	z := SKVar tag: #z.	

	self assert: (( "Conjunction"
		[{[ :y | y === 1 ] tabled: #test inputs: {x}. 
			[ :y | y === 1 ] tabled: #test inputs: {x}}] asGoal runRuntimes last 
		tables at: #test) at: x cons) first argv equals: 1 cons. 
	
	self assert: (( "MPlus"
		[{[ :y | y === 1 ] tabled: #test inputs: {x}. 
			[ :y | y === 1 ] tabled: #test inputs: {x}} conde] asGoal runRuntimes last 
		tables at: #test) at: x cons) first argv equals: 1 cons. 