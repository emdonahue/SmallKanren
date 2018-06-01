adding
add: aDelayedVar
	^ SKForwardDelayQueue new
		first: aDelayedVar;
		rest: self