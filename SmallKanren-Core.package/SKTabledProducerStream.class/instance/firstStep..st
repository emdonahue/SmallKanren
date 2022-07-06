accessing
firstStep: aRuntime
	^ (stream firstStep: aRuntime) table: tableName cacheKey: cacheKey inputs: inputVars state: state.