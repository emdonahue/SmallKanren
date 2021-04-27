caching
cacheStream: aStream
	"Does not require full unifier. Subunify should do."

	"answer called twice"

	<todo>
	<type: #SKState returns: #(OrC SKState SKFailure)>
	"self haltIf: [ (aStream answer reify: argVars) = (#b cons: #b cons) ]."
	(cache allSatisfy: [ :ansv | (aStream answer unify: ansv with: argVars) isFailure ])
		ifFalse: [ ^ SKStream failure ].
	cache add: (aStream answer reify: argVars).
	^ aStream.