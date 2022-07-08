streaming
step: aRuntime
	^ (stream step: aRuntime) table: tableName cacheKey: cacheKey outputs: outputVars pseudocounts: pseudocounts runtime: aRuntime.