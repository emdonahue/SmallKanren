delaying
suspendedVars: someVars
	^ SKDelayed new
		state: self;
		suspendedVars: someVars