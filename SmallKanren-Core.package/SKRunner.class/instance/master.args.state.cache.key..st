tabling
master: goalBlock args: argVars state: aState cache: cache key: cacheKey
	<todo>
	"instead of copying, this whole system should be based on a single tabled-stream producing call"
	
	^ ((goalBlock valueWithArguments: argVars) run: aState runner: self)
		produceTabledAnswersFrom:
			(SKTabledProducerStream new
				cache: cache;
				tabledArgs: cacheKey).