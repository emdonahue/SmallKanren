caching
cacheStream: aStream
	<todo> "Does not require full unifier. Subunify should do. (defined on diss page 182)" "answer called twice"

	<type: #SKState returns: #(OrC SKState SKFailure)>
	"self haltIf: [ (aStream answer reify: argVars) = (#b cons: #b cons) ]."
	"If something in the cache unifies with the potential return vals, we have produced this answer before, so fail."
	(cache allSatisfy: [ :ansv | (aStream answer unify: ansv with: argVars) isFailure ])
		ifFalse: [ ^ SKStream failure ].
	"Otherwise, cache the answer and continue."
	cache add: (aStream answer reify: argVars).
	^ aStream.