tabling
master: goalBlock args: argVars state: aState cache: cache key: cacheKey
	^ SKTabledProducerStream new
		stream: ((goalBlock valueWithArguments: argVars) run: aState runner: self);
		cache: cache;
		tabledArgs: cacheKey.