tabling
closeTable: tableName cache: cacheKey runtime: aRuntime
	^ self runtime: (aRuntime closeTable: tableName cache: cacheKey runtime: aRuntime).