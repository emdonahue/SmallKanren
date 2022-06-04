tabling
master: goalBlock args: argVars state: aState cache: cache key: cacheKey
	"instead of copying, this whole system should be based on a single tabled-stream producing call"

	<todo>
	^ ((goalBlock valueWithArguments: argVars) run: aState runtime: self)
		produceTabledAnswersFrom:
			(SKTabledProducerStream new
				cache: cache;
				inputs: cacheKey;
				cacheKey: (aState reify: cacheKey);
				pseudoCounts: aState pseudoCounts).