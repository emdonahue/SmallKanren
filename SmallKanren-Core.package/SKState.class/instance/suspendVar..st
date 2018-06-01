delaying
suspendVar: aDelay
	^ SKDelayed new
		state: self;
		suspendedVars: (SKDelayQueue from: aDelay)