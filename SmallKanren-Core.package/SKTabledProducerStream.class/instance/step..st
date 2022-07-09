streaming
step: aRuntime
	^ (stream step: aRuntime) table: tableName inputs: cacheKey outputs: outputVars pseudocounts: pseudocounts runtime: aRuntime.