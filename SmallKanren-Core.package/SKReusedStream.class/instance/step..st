streaming
step: aRuntime
	| producerEntries consumerEntries producerCache |
	producerCache := aRuntime table: table cache: cache.
	producerEntries := producerCache entries.
	consumed == producerEntries ifTrue: [ 
		producerCache isClosed ifTrue: [ ^ SKStream failure ] "If out of entries, fail."
			ifFalse: [ ^ self ] ]. "If no change, suspend."
	consumerEntries := producerEntries predecessorOf: consumed.
	^ ((state unify: outputs with: (state copyTerm: consumerEntries first argv))
				averagePseudoCounts: consumerEntries first pseudoCounts)
		+ (self copy consumed: consumerEntries).