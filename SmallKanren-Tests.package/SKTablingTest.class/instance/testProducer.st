streams
testProducer

	| tmp1 tmp2 |
	tmp1 := SKVar tag: #x.
	tmp2 := SKVar tag: #z.
	self
		assert:
			(([ [ :arg1 | SKGoal fail ] tabled: #test inputs: { tmp1 } ] asGoal
				  runtime runLast tables at: #test) at: tmp1 cons)
		equals: Cons empty;
		assert:
			(([ [ :arg2 | arg2 === 1 ] tabled: #test inputs: { tmp1 } ] asGoal
				  runRuntimes last tables at: #test) at: tmp1 cons) first argv
		equals: 1 cons;
		assert: (([ 
			  [ :arg3 :arg4 | 
			  { 
				  (arg3 === 1).
				  (arg4 === 2) } ]
				  tabled: #test
				  inputs: { tmp1 }
				  outputs: { tmp2 } ] asGoal runRuntimes last tables at: #test) 
				 at: tmp1 cons) first argv
		equals: 1 cons;
		assert: ([ 
			 [ :arg5 :arg6 | 
			 { 
				 (arg5 === 1).
				 (arg6 === 2) } ] tabled: #test inputs: { tmp1 } outputs: { tmp2 } ]
				 asGoal runStates first reify: (tmp1 cons: tmp2))
		equals: (1 cons: 2);
		assert:
			(([ [ :arg7 | [ arg7 === 1 ] ] tabled: #test inputs: { tmp1 } ]
				  asGoal runRuntimes last tables at: #test) at: tmp1 cons) first
				argv
		equals: 1 cons;
		assert: ((([ 
			   [ :arg8 | arg8 === 1 | (arg8 === 2) ]
				   tabled: #test
				   inputs: { tmp1 } ] asGoal runRuntimes last tables at: #test) 
				  at: tmp1 cons) collect: #argv)
		equals: #( #( 1 ) #( 2 ) ) asConsR;
		assert: ((([ 
			   [ :arg9 | [ arg9 === 1 ] asGoal | [ arg9 === 2 ] ]
				   tabled: #test
				   inputs: { tmp1 } ] asGoal runRuntimes last tables at: #test) 
				  at: tmp1 cons) collect: #argv)
		equals: #( #( 2 ) #( 1 ) ) asConsR;
		assert: (([ 
			  [ :arg10 | 
			  arg10 carCdro: [ :arg11 :arg12 | 
					  { 
						  (arg11 === 1).
						  (arg12 === 2) } ] ] tabled: #test inputs: { tmp1 } ] asGoal
				  runRuntimes last tables at: #test) at: tmp1 cons) first argv
		equals: (1 cons: 2) cons