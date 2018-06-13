tabling
table: tableName key: cacheKey run: aState in: goalBlock
	| table cache |
	table := tables at: tableName ifAbsentPut: [ Dictionary new ].
	"If the cache already exists, this is a consumer call. Otherwise, it is a producer call."
	cache := table
		at: cacheKey
		ifPresent: [ :c | 
			c ]
		ifAbsentPut: [ OrderedCollection new ].
	^ SKTabledProducerStream new
		stream: ((goalBlock valueWithArguments: cacheKey) run: aState runner: self);
		cache: cache;
		tabledArgs: cacheKey.