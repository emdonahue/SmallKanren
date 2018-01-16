delaying
suspendVar: aDelay
	^ SKDelayed new
		state: self;
		suspendedVars: (aDelay var cons: aDelay) cons