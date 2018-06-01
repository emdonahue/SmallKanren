delaying
suspendVar: aDelay
	
	
	^ SKDelayed new
		state: state;
		suspendedVars:
			(suspendedVars
				detect: [ :kv | kv car = aDelay var ]
				ifFound: [ :kv | (suspendedVars rejectOne: [ :v | v = kv ]) add: (kv car cons: (kv cdr conjoin: aDelay)) ]
				ifNone: [ suspendedVars add: (aDelay var cons: aDelay) ])