streaming
step: aRuntime
	^ (stream step: aRuntime) table: tableName cacheKey: cacheKey outputs: inputVars pseudocounts: pseudocounts runtime: aRuntime.