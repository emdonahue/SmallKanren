tabling
master: goalBlock args: argVars state: aState cache: cache key: cacheKey
	"instead of copying, this whole system should be based on a single tabled-stream producing call"
	"Strip pseudocounts from state since other branches will entel this tabling call with other pseudocount histories. Recombine the pseudocounts as states emerge from the master stream."
	<todo>
	^ ((goalBlock valueWithArguments: argVars) run: (aState copy pseudoCounts: SKPseudoCounts new) runtime: self)
		produceTabledAnswersFrom:
			(SKTabledProducerStream new
				cache: cache;
				inputs: cacheKey;
				cacheKey: (aState reify: cacheKey);
				pseudoCounts: aState pseudoCounts).