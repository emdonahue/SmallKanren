tabling
table: tableName inputCacheKey: aConsLazy inputs: aConsLazy3 cacheKey: aConsLazy4 state: aSKState runtime: aSKRuntime 
	^ SKTabledProducerStream table: tableName inputCacheKey: aConsLazy inputs: aConsLazy3 cacheKey: aConsLazy4 state: aSKState runtime: aSKRuntime stream: self.
	
	"cache: cache;
				   inputs: cacheKey;
				   cacheKey: (aState reify: cacheKey);
				   state: aState"