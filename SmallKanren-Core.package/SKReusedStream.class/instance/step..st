streaming
step: aRuntime
	| producerCache consumerCache |
	producerCache := aRuntime table: table cache: cache.
	consumed == producerCache ifTrue: [ ^ self ]. "If no change, suspend."
	consumerCache := producerCache predecessorOf: consumed.
	^ ((state unify: outputs with: (state copyTerm: consumerCache first argv))
				averagePseudoCounts: consumerCache first pseudoCounts)
		+ (self copy consumed: consumerCache).