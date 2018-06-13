caching
cacheStream: aStream
	<todo>
	"Does not require full unifier. Subunify should do."
	| answer |
	answer := aStream answer reify: argVars.
	(cache allSatisfy: [ :ansv | (aStream answer unify: ansv with: argVars) isEmptyStream ])
		ifFalse: [ ^ SKStream failure ].
	cache add: answer.
	^ self copy stream: aStream.