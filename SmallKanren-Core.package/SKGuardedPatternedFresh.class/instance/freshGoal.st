laziness
freshGoal
	^ (block valueWithArguments: 
		(vars, ((1 to: (block argumentCount - vars size)) 
				collect: [ :i | SKTaggedVar new ]))) asGoal.