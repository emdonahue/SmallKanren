streaming
step: aRuntime
	<todo> "Test whether consuming all available answers is faster"
	| producerEntries consumerEntries producerCache answer |
	producerCache := aRuntime table: table cache: cacheKey.
	producerEntries := producerCache entries.
	
	consumed == producerEntries ifTrue: [ 
		producerCache isClosed ifTrue: [ ^ SKStream failure ] "If finished all entries, fail."
			ifFalse: [ ^ self ] ]. "If no change, suspend."
		
	consumerEntries := producerEntries predecessorOf: consumed.
	answer := (state unify: outputs with: (state copyTerm: consumerEntries first argv))
				averagePseudoCounts: consumerEntries first pseudoCounts.
			
	"If we are returning our last answer, don't bother to preserve the reused stream."
	^ consumerEntries == producerEntries & producerCache isClosed 
		ifTrue: [ answer ]
		ifFalse: [ answer + (self copy consumed: consumerEntries; cache: producerCache entries) ] .