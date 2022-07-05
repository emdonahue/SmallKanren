tabling
table: aString inputCacheKey: aConsLazy inputs: aConsLazy3 cacheKey: aConsLazy4 state: aSKState 
	"^ (SKTabledProducerStream new
		tableName: aString;
		inputCacheKey: aConsLazy;
		inputs: aConsLazy3;
		cacheKey: aConsLazy4;
		stream: aSKState) runtime: self."
		^ stream table: aString inputCacheKey: aConsLazy inputs: aConsLazy3 cacheKey: aConsLazy4 state: aSKState runtime: self.