constructor
table: aString inputCacheKey: aConsLazy inputs: aConsLazy3 cacheKey: aConsLazy4 state: aSKState runtime: aSKRuntime stream: aSKIncomplete 
	^ (self new
		inputs: aConsLazy;
		cacheKey: aConsLazy4;
		state: aSKState;
		stream: aSKIncomplete) runtime: aSKRuntime.
		"cache: cache;
				   inputs: cacheKey;
				   cacheKey: (aState reify: cacheKey);
				   state: aState"