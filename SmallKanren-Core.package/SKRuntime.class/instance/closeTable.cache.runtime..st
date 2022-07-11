tabling
closeTable: tableName cache: cacheKey runtime: anObject
	"When the producer has consumed its entire stream ending in a state or a failure, close the cache to signal to consumers that they can terminate when they have finished consuming it."
	| table cache |
	table := tables at: tableName.
	cache := table at: cacheKey.
	^ self copy tables: 
		(tables copy at: tableName put: (
			table copy at: cacheKey put: cache close; yourself); yourself).