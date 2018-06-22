tabling
master: goalBlock args: argVars state: aState cache: cache key: cacheKey
	^ 
		 ((goalBlock valueWithArguments: argVars) run: aState runner: self) produceTabledAnswersFrom: 
		(SKTabledProducerStream new
		cache: cache;
		tabledArgs: cacheKey)