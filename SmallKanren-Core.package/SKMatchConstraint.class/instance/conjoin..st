composing
conjoin: aDelay
	^ SKDelayedVarConjoin new
		left: self;
		right: aDelay.