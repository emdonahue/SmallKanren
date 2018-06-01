delaying
suspendVar: aDelay
	^ SKDelayed new
		state: self;
		suspendedVars: (ABBench a: [ SKDelayQueue from: aDelay ] b: [(aDelay var cons: aDelay) cons])