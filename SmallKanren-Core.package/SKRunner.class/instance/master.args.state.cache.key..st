tabling
master: goalBlock args: argVars state: aState cache: cache key: cacheKey
	"instead of copying, this whole system should be based on a single tabled-stream producing call"

	<todo>
	(aState reify: cacheKey) = (#b cons: #b cons)
		ifTrue: [ Transcript show: 'b b master' ].
	^ ((goalBlock valueWithArguments: argVars) run: aState runner: self)
		produceTabledAnswersFrom:
			(SKTabledProducerStream new
				cache: cache;
				inputs: cacheKey;
				cacheKey: (aState reify: cacheKey)).