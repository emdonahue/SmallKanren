tabling
complete: aStream table: tableName cacheKey: cacheKey inputs: inputVars pseudocounts: pseudoCounts runtime: aRuntime
	"Called by complete after having consumed the state (in this runtime) to table the rest of the stream."
	^ (aStream table: tableName cacheKey: cacheKey inputs: inputVars pseudocounts: pseudoCounts runtime: self) + stream.