caching
cacheStream: aStream
	"Does not require full unifier. Subunify should do."

	"answer var redundant?"

	<todo>
	<type: #SKState returns: #(OrC SKState SKFailure)>
	(cache allSatisfy: [ :ansv | (aStream answer unify: ansv with: argVars) isEmptyStream ])
		ifFalse: [ ^ SKStream failure ].
	cache add: (aStream answer reify: argVars).
	^ aStream.