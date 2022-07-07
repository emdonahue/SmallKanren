streaming
step: aRuntime
	^ (stream step: aRuntime) table: tableName cacheKey: cacheKey inputs: inputVars pseudocounts: pseudocounts runtime: aRuntime.