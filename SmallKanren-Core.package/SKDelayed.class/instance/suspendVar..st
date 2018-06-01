delaying
suspendVar: aDelay
	
	
	^ SKDelayed new
		state: state;
		suspendedVars: (suspendedVars insert: aDelay)